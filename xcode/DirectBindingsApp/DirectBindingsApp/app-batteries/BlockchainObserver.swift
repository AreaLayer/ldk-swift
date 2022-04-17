//
//  BlockchainObserver.swift
//  DirectBindingsApp
//
//  Created by Arik Sosman on 4/10/22.
//

import Foundation


@available(iOS 15.0, *)
class BlockchainObserver {

    public enum InitError: Error {
        case invalidUrlString
    }

    public enum RpcError: Error {
        case errorResponse(RPCErrorDetails)
    }

    public enum ObservationError: Error {
        case alreadyInProgress
        case nonSequentialBlockConnection
        case unhandledReorganization
        case excessiveReorganization
    }

    /**
     Which block height should the monitor start from?
     */
    public enum MonitorAnchor {
        /**
         Start from the genesis block, and catch up on all data thence
         */
        case genesis
        /**
         Start from a specific block height, and catch up through the chaintip
         */
        case block(Int64)
        /**
         Start from the chaintip, and only register new blocks as they come
         */
        case chaintip
    }

    public enum RpcProtocol {
        case http
        case https

        func toString() -> String {
            switch self {
            case .http:
                return "http"
            case .https:
                return "https"
            }
        }

        func defaultPort() -> UInt {
            switch self {
            case .http:
                return 80
            case .https:
                return 443
            }
        }
    }

    struct RPCErrorDetails {
        let message: String
        let code: Int64
    }

    struct RPCBlockDetails: Codable {
        let hash: String
        let version: Int64
        let mediantime: Int64
        let nonce: Int64
        let chainwork: String
        let nTx: Int64
        let time: Int64
        let weight: Int64
        let merkleroot: String
        let size: Int64
        let confirmations: Int64
        let versionHex: String
        let height: Int64
        let difficulty: Double
        let strippedsize: Int64
        let previousblockhash: String
        let bits: String
        let tx: [String]
    }

    private let rpcProtocol: RpcProtocol
    private let rpcDomain: String
    private let rpcPort: UInt
    private let rpcUsername: String
    private let rpcPassword: String

    private actor MonitoringTracker {
        private(set) var isPreloaded = false
        private(set) var isTracking = false

        fileprivate func preload() -> Bool {
            let wasPreloaded = self.isPreloaded
            self.isPreloaded = true
            return wasPreloaded
        }
        
        fileprivate func startTracking() -> Bool {
            let wasTracking = self.isTracking
            self.isTracking = true
            return wasTracking
        }
    }

    private let monitoringTracker = MonitoringTracker()
    private var anchorBlock: RPCBlockDetails?
    private var connectedBlocks = [RPCBlockDetails]()

    private var chainListeners = [BlockchainListener]()

    public init(rpcProtocol: RpcProtocol, rpcDomain: String, rpcPort: UInt?, rpcUsername: String, rpcPassword: String) throws {
        self.rpcProtocol = rpcProtocol
        self.rpcDomain = rpcDomain
        self.rpcPort = rpcPort ?? rpcProtocol.defaultPort()
        self.rpcUsername = rpcUsername
        self.rpcPassword = rpcPassword
        guard self.getRpcEndpoint() != nil else {
            throw InitError.invalidUrlString
        }
    }

    public func registerListener(_ listener: BlockchainListener) {
        self.chainListeners.append(listener)
    }

    public func preloadMonitor(anchorHeight: MonitorAnchor = .genesis) async throws {
        let isPreloaded = await self.monitoringTracker.preload()
        if isPreloaded {
            // no need to preload twice
            return
        }
        var lastTrustedBlockHeight: Int64
        let chaintipHeight = try await self.getChaintipHeight()
        switch anchorHeight {
        case .genesis:
            lastTrustedBlockHeight = 1
        case .block(let height):
            lastTrustedBlockHeight = height
        case .chaintip:
            lastTrustedBlockHeight = chaintipHeight
        }

        let anchorBlockHash = try await self.getBlockHash(height: lastTrustedBlockHeight)
        self.anchorBlock = try await self.getBlock(hash: anchorBlockHash)
        self.connectedBlocks.append(self.anchorBlock!)

        if lastTrustedBlockHeight != chaintipHeight {
            // gotta connect blocks all the way to the chain tip
            for currentBlockHeight in (lastTrustedBlockHeight + 1)...chaintipHeight {
                let currentBlockHash = try await self.getBlockHash(height: currentBlockHeight)
                let currentBlock = try await self.getBlock(hash: currentBlockHash)
                try await self.connectBlock(block: currentBlock)
            }
        }

    }
    
    public func monitorBlockchain() async throws {
        try await preloadMonitor()
        let isMonitoring = await self.monitoringTracker.startTracking()
        if isMonitoring {
            throw ObservationError.alreadyInProgress
        }
        while true {
            try await reconcileChaintips()
            // sleep for 5s
            try await Task.sleep(nanoseconds: 5_000_000_000)
        }
    }

    // Manually trigger a check of what's the latest
    public func reconcileChaintips() async throws {
        let currentChaintipHeight = try await self.getChaintipHeight()
        let currentChaintipHash = try await self.getChaintipHash()
        let knownChaintip = self.connectedBlocks.last!
        if knownChaintip.height == currentChaintipHeight && knownChaintip.hash == currentChaintipHash {
            // we're still at chaintip
            return
        }

        // create an array of the new blocks
        var addedBlocks = [RPCBlockDetails]()
        for addedBlockHeight in (knownChaintip.height + 1)...currentChaintipHeight {
            let addedBlockHash = try await self.getBlockHash(height: addedBlockHeight)
            let addedBlock = try await self.getBlock(hash: addedBlockHash)
            addedBlocks.append(addedBlock)
        }

        while addedBlocks.isEmpty || addedBlocks.first!.previousblockhash != self.connectedBlocks.last!.hash {
            // we must keep popping until it matches
            let trimmedLocalTip = try await self.disconnectBlock()
            let reorgedBlockHash = try await self.getBlockHash(height: trimmedLocalTip.height)
            let reorgedBlock = try await self.getBlock(hash: reorgedBlockHash)
            addedBlocks.insert(reorgedBlock, at: 0)
        }

        for addedBlock in addedBlocks {
            try await self.connectBlock(block: addedBlock)
        }

    }

    private func disconnectBlock() async throws -> RPCBlockDetails {
        if self.connectedBlocks.count <= 1 {
            // we're about to disconnect the anchor block, which we can't
            throw ObservationError.excessiveReorganization
        }

        let poppedBlock = self.connectedBlocks.popLast()!

        if self.chainListeners.count > 0 {
            let blockHeader = try await self.getBlockHeader(hash: poppedBlock.hash)
            for listener in self.chainListeners {
                listener.blockDisconnected(header: blockHeader, height: UInt32(poppedBlock.height))
            }
        }

        return poppedBlock
    }

    private func connectBlock(block: RPCBlockDetails) async throws {
        if self.connectedBlocks.count > 0 {
            let lastConnectionHeight = self.connectedBlocks.last!.height
            if lastConnectionHeight + 1 != block.height {
                // trying to connect block out of order
                throw ObservationError.nonSequentialBlockConnection
            }
            let lastBlockHash = self.connectedBlocks.last!.hash
            if block.previousblockhash != lastBlockHash {
                // this should in principle never occur, as the caller should check and reconcile beforehand
                throw ObservationError.unhandledReorganization
            }
        }

        if self.chainListeners.count > 0 {
            let binary = try await self.getBlockBinary(hash: block.hash)
            for listener in self.chainListeners {
                listener.blockConnected(block: binary, height: UInt32(block.height))
            }
        }

        self.connectedBlocks.append(block)
    }

    private func getRpcEndpoint() -> URL? {
        let urlString = "\(self.rpcProtocol)://\(self.rpcUsername):\(self.rpcPassword)@\(self.rpcDomain):\(self.rpcPort)"
        return URL(string: urlString)
    }

    internal func callRpcMethod(method: String, params: Any) async throws -> [String: Any] {
        let url = self.getRpcEndpoint()!
        let body: [String: Any] = [
            "method": method,
            "params": params
        ]
        let jsonBody = try! JSONSerialization.data(withJSONObject: body)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonBody
        let (data, _) = try await URLSession.shared.data(for: request)
        let response = try JSONSerialization.jsonObject(with: data, options: .topLevelDictionaryAssumed)
        print("JSON-RPC response: \(response)")
        let responseDictionary = response as! [String: Any]
        if let responseError = responseDictionary["error"] as? [String: Any] {
            let errorDetails = RPCErrorDetails(message: responseError["message"] as! String, code: responseError["code"] as! Int64)
            print("error details: \(errorDetails)")
            throw RpcError.errorResponse(errorDetails)
        }
        return responseDictionary
    }

    public func getHelp(command: String? = nil) async throws -> String {
        var params = [String]()
        if let command = command {
            params.append(command)
        }
        let response = try await self.callRpcMethod(method: "help", params: params)
        let result = response["result"] as! String
        return result
    }

    public func getChaintipHeight() async throws -> Int64 {
        let response = try await self.callRpcMethod(method: "getblockcount", params: [])
        let result = response["result"] as! Int64
        return result
    }

    public func getChaintipHash() async throws -> String {
        let chainInfo = try await self.getChainInfo()
        return chainInfo["bestblockhash"] as! String
    }

    public func getBlockHash(height: Int64) async throws -> String {
        let response = try await self.callRpcMethod(method: "getblockhash", params: ["height": height])
        let result = response["result"] as! String
        return result
    }

    public func getBlock(hash: String) async throws -> RPCBlockDetails {
        let response = try await self.callRpcMethod(method: "getblock", params: [hash])
        let result = response["result"] as! [String: Any]
        let blockDetails = try JSONDecoder().decode(RPCBlockDetails.self, from: JSONSerialization.data(withJSONObject: result))
        return blockDetails
    }

    public func getBlockBinary(hash: String) async throws -> [UInt8] {
        let response = try await self.callRpcMethod(method: "getblock", params: [hash, 0])
        let result = response["result"] as! String
        let blockData = hexStringToBytes(hexString: result)!
        return blockData
    }

    public func getBlockHeader(hash: String) async throws -> [UInt8] {
        let response = try await self.callRpcMethod(method: "getblockheader", params: [hash, false])
        let result = response["result"] as! String
        let blockHeader = hexStringToBytes(hexString: result)!
        assert(blockHeader.count == 80)
        return blockHeader
    }

    /**
     Get chain details such as the chaintip hash, the active soft forks, etc.
     - Returns:
     - Throws:
     */
    public func getChainInfo() async throws -> [String: Any] {
        let response = try await self.callRpcMethod(method: "getblockchaininfo", params: [])
        let result = response["result"] as! [String: Any]
        return result
    }

    /**
     Generate a new address in the active wallet
     - Returns:
     - Throws:
     */
    public func generateAddress() async throws -> String {
        let response = try await self.callRpcMethod(method: "getnewaddress", params: [])
        let result = response["result"] as! String
        return result
    }

}

public protocol BlockchainListener {
    func blockConnected(block: [UInt8], height: UInt32);
    func blockDisconnected(header: [UInt8]?, height: UInt32);
}

fileprivate func hexStringToBytes(hexString: String) -> [UInt8]? {
    let hexStr = hexString.dropFirst(hexString.hasPrefix("0x") ? 2 : 0)

    guard hexStr.count % 2 == 0 else {
        return nil
    }

    var newData = [UInt8]()

    var indexIsEven = true
    for i in hexStr.indices {
        if indexIsEven {
            let byteRange = i...hexStr.index(after: i)
            guard let byte = UInt8(hexStr[byteRange], radix: 16) else {
                return nil
            }
            newData.append(byte)
        }
        indexIsEven.toggle()
    }
    return newData
}

fileprivate func bytesToHexString(bytes: [UInt8]) -> String {
    let format = "%02hhx" // "%02hhX" (uppercase)
    return bytes.map {
                String(format: format, $0)
            }
            .joined()
}