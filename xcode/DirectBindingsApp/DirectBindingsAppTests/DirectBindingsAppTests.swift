//
//  DirectBindingsAppTests.swift
//  DirectBindingsAppTests
//
//  Created by Arik Sosman on 8/20/21.
//

import XCTest
@testable import DirectBindingsApp

class DirectBindingsAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testIncrementalMemoryLeaks() throws {
        let filter = TestFilter()
        let broadcaster = TestBroadcasterInterface()
        let logger = TestLogger()
        let feeEstimator = TestFeeEstimator()
        let persister = TestPersister()

        let chainMonitor = ChainMonitor(chain_source: filter, broadcaster: broadcaster, logger: logger, feeest: feeEstimator, persister: persister)

        let seed: [UInt8] = [UInt8](Data(base64Encoded: "//////////////////////////////////////////8=")!)
        let timestamp_seconds = UInt64(NSDate().timeIntervalSince1970)
        let timestamp_nanos = UInt32(truncating: NSNumber(value: timestamp_seconds * 1000 * 1000))

        let keysManager = KeysManager(seed: seed, starting_time_secs: timestamp_seconds, starting_time_nanos: timestamp_nanos)
        let config = UserConfig()

        let keysInterface = keysManager.as_KeysInterface()

        let serialized_channel_manager = LDKTestFixtures.serializedChannelManager

        let serializedChannelMonitors: [[UInt8]] = LDKTestFixtures.serializedChannelMonitors

        var monitors: [LDKChannelMonitor] = []
        // let secondConfig = config.clone()
        // let res = UtilMethods.constructor_BlockHashChannelManagerZ_read(ser: serialized_channel_manager, arg_keys_manager: keysInterface, arg_fee_estimator: feeEstimator, arg_chain_monitor: chainMonitor.as_Watch(), arg_tx_broadcaster: broadcaster, arg_logger: logger, arg_default_config: config, arg_channel_monitors: monitors)

        print("last statement in memory leak test")

        let channel_manager_constructor = try ChannelManagerConstructor(
                channel_manager_serialized: serialized_channel_manager,
                channel_monitors_serialized: serializedChannelMonitors,
                keys_interface: keysInterface,
                fee_estimator: feeEstimator,
                chain_monitor: chainMonitor,
                filter: filter,
                router: nil,
                tx_broadcaster: broadcaster,
                logger: logger
        )
        /*
        let channel_manager = channel_manager_constructor.channelManager;
        let cmPersister = TestChannelManagerPersister(channelManager: channel_manager)
        channel_manager_constructor.chain_sync_completed(persister: cmPersister)
        */
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
