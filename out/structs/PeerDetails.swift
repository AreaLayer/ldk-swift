#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// Details of a connected peer as returned by [`PeerManager::list_peers`].
public typealias PeerDetails = Bindings.PeerDetails

extension Bindings {


	/// Details of a connected peer as returned by [`PeerManager::list_peers`].
	public class PeerDetails: NativeTypeWrapper {

		let initialCFreeability: Bool


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKPeerDetails?

		internal init(cType: LDKPeerDetails, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKPeerDetails, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKPeerDetails, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		/// Frees any resources used by the PeerDetails, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = PeerDetails_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The node id of the peer.
		///
		/// For outbound connections, this [`PublicKey`] will be the same as the `their_node_id` parameter
		/// passed in to [`PeerManager::new_outbound_connection`].
		public func getCounterpartyNodeId() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKPeerDetails>) in
					PeerDetails_get_counterparty_node_id(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = PublicKey(
				cType: nativeCallResult, instantiationContext: "PeerDetails.swift::\(#function):\(#line)", anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// The node id of the peer.
		///
		/// For outbound connections, this [`PublicKey`] will be the same as the `their_node_id` parameter
		/// passed in to [`PeerManager::new_outbound_connection`].
		public func setCounterpartyNodeId(val: [UInt8]) {
			// native call variable prep

			let valPrimitiveWrapper = PublicKey(
				value: val, instantiationContext: "PeerDetails.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKPeerDetails>) in
					PeerDetails_set_counterparty_node_id(thisPtrPointer, valPrimitiveWrapper.cType!)
				}


			// cleanup

			// for elided types, we need this
			valPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The socket address the peer provided in the initial handshake.
		///
		/// Will only be `Some` if an address had been previously provided to
		/// [`PeerManager::new_outbound_connection`] or [`PeerManager::new_inbound_connection`].
		///
		/// Returns a copy of the field.
		public func getSocketAddress() -> SocketAddress? {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKPeerDetails>) in
					PeerDetails_get_socket_address(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Option_SocketAddressZ(
				cType: nativeCallResult, instantiationContext: "PeerDetails.swift::\(#function):\(#line)", anchor: self
			)
			.getValue()


			return returnValue
		}

		/// The socket address the peer provided in the initial handshake.
		///
		/// Will only be `Some` if an address had been previously provided to
		/// [`PeerManager::new_outbound_connection`] or [`PeerManager::new_inbound_connection`].
		public func setSocketAddress(val: SocketAddress?) {
			// native call variable prep

			let valOption = Option_SocketAddressZ(
				some: val, instantiationContext: "PeerDetails.swift::\(#function):\(#line)"
			)
			.danglingClone()


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKPeerDetails>) in
					PeerDetails_set_socket_address(thisPtrPointer, valOption.cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The features the peer provided in the initial handshake.
		public func getInitFeatures() -> InitFeatures {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKPeerDetails>) in
					PeerDetails_get_init_features(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = InitFeatures(
				cType: nativeCallResult, instantiationContext: "PeerDetails.swift::\(#function):\(#line)", anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// The features the peer provided in the initial handshake.
		public func setInitFeatures(val: InitFeatures) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKPeerDetails>) in
					PeerDetails_set_init_features(thisPtrPointer, val.dynamicallyDangledClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Indicates the direction of the peer connection.
		///
		/// Will be `true` for inbound connections, and `false` for outbound connections.
		public func getIsInboundConnection() -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKPeerDetails>) in
					PeerDetails_get_is_inbound_connection(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Indicates the direction of the peer connection.
		///
		/// Will be `true` for inbound connections, and `false` for outbound connections.
		public func setIsInboundConnection(val: Bool) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) { (thisPtrPointer: UnsafeMutablePointer<LDKPeerDetails>) in
					PeerDetails_set_is_inbound_connection(thisPtrPointer, val)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Constructs a new PeerDetails given each field
		public init(
			counterpartyNodeIdArg: [UInt8], socketAddressArg: SocketAddress?, initFeaturesArg: InitFeatures,
			isInboundConnectionArg: Bool
		) {
			// native call variable prep

			let counterpartyNodeIdArgPrimitiveWrapper = PublicKey(
				value: counterpartyNodeIdArg, instantiationContext: "PeerDetails.swift::\(#function):\(#line)")

			let socketAddressArgOption = Option_SocketAddressZ(
				some: socketAddressArg, instantiationContext: "PeerDetails.swift::\(#function):\(#line)"
			)
			.danglingClone()


			// native method call
			let nativeCallResult = PeerDetails_new(
				counterpartyNodeIdArgPrimitiveWrapper.cType!, socketAddressArgOption.cType!,
				initFeaturesArg.dynamicallyDangledClone().cType!, isInboundConnectionArg)

			// cleanup

			// for elided types, we need this
			counterpartyNodeIdArgPrimitiveWrapper.noOpRetain()

			self.initialCFreeability = nativeCallResult.is_owned


			/*
						// return value (do some wrapping)
						let returnValue = PeerDetails(cType: nativeCallResult, instantiationContext: "PeerDetails.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(conflictAvoidingVariableName: 0, instantiationContext: "PeerDetails.swift::\(#function):\(#line)")


		}


		/// Indicates that this is the only struct which contains the same pointer.
		/// Rust functions which take ownership of an object provided via an argument require
		/// this to be true and invalidate the object pointed to by inner.
		public func isOwned() -> Bool {
			// return value (do some wrapping)
			let returnValue = self.cType!.is_owned

			return returnValue
		}


		internal func setCFreeability(freeable: Bool) -> PeerDetails {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> PeerDetails {
			self.dangling = self.cType!.is_owned
			return self
		}

		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print("Freeing PeerDetails \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing PeerDetails \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

