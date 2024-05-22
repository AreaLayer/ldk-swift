#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// The unsigned part of a [`node_announcement`] message.
///
/// [`node_announcement`]: https://github.com/lightning/bolts/blob/master/07-routing-gossip.md#the-node_announcement-message
public typealias UnsignedNodeAnnouncement = Bindings.UnsignedNodeAnnouncement

extension Bindings {


	/// The unsigned part of a [`node_announcement`] message.
	///
	/// [`node_announcement`]: https://github.com/lightning/bolts/blob/master/07-routing-gossip.md#the-node_announcement-message
	public class UnsignedNodeAnnouncement: NativeTypeWrapper {

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

		internal var cType: LDKUnsignedNodeAnnouncement?

		internal init(cType: LDKUnsignedNodeAnnouncement, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKUnsignedNodeAnnouncement, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKUnsignedNodeAnnouncement, instantiationContext: String, anchor: NativeTypeWrapper,
			dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		/// Frees any resources used by the UnsignedNodeAnnouncement, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = UnsignedNodeAnnouncement_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The advertised features
		public func getFeatures() -> NodeFeatures {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_features(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = NodeFeatures(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// The advertised features
		public func setFeatures(val: NodeFeatures) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_features(thisPtrPointer, val.dynamicallyDangledClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// A strictly monotonic announcement counter, with gaps allowed
		public func getTimestamp() -> UInt32 {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_timestamp(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// A strictly monotonic announcement counter, with gaps allowed
		public func setTimestamp(val: UInt32) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_timestamp(thisPtrPointer, val)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The `node_id` this announcement originated from (don't rebroadcast the `node_announcement` back
		/// to this node).
		public func getNodeId() -> NodeId {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_node_id(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = NodeId(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// The `node_id` this announcement originated from (don't rebroadcast the `node_announcement` back
		/// to this node).
		public func setNodeId(val: NodeId) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_node_id(thisPtrPointer, val.dynamicallyDangledClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// An RGB color for UI purposes
		public func getRgb() -> [UInt8]? {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_rgb(thisPtrPointer)
				}


			// cleanup

			guard let nativeCallResult = nativeCallResult else {
				return nil
			}


			// return value (do some wrapping)
			let returnValue = Bindings.UInt8Tuple3ToArray(tuple: nativeCallResult.pointee)


			return returnValue
		}

		/// An RGB color for UI purposes
		public func setRgb(val: [UInt8]) {
			// native call variable prep

			let valPrimitiveWrapper = ThreeBytes(
				value: val, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_rgb(thisPtrPointer, valPrimitiveWrapper.cType!)
				}


			// cleanup

			// for elided types, we need this
			valPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// An alias, for UI purposes.
		///
		/// This should be sanitized before use. There is no guarantee of uniqueness.
		public func getAlias() -> NodeAlias {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_alias(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = NodeAlias(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// An alias, for UI purposes.
		///
		/// This should be sanitized before use. There is no guarantee of uniqueness.
		public func setAlias(val: NodeAlias) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_alias(thisPtrPointer, val.dynamicallyDangledClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// List of addresses on which this node is reachable
		///
		/// Returns a copy of the field.
		public func getAddresses() -> [SocketAddress] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_addresses(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_SocketAddressZ(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// List of addresses on which this node is reachable
		public func setAddresses(val: [SocketAddress]) {
			// native call variable prep

			let valVector = Vec_SocketAddressZ(
				array: val, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_addresses(thisPtrPointer, valVector.cType!)
				}


			// cleanup

			// valVector.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Excess address data which was signed as a part of the message which we do not (yet) understand how
		/// to decode.
		///
		/// This is stored to ensure forward-compatibility as new address types are added to the lightning gossip protocol.
		///
		/// Returns a copy of the field.
		public func getExcessAddressData() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_excess_address_data(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Excess address data which was signed as a part of the message which we do not (yet) understand how
		/// to decode.
		///
		/// This is stored to ensure forward-compatibility as new address types are added to the lightning gossip protocol.
		public func setExcessAddressData(val: [UInt8]) {
			// native call variable prep

			let valVector = Vec_u8Z(
				array: val, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_excess_address_data(thisPtrPointer, valVector.cType!)
				}


			// cleanup

			// valVector.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Excess data which was signed as a part of the message which we do not (yet) understand how
		/// to decode.
		///
		/// This is stored to ensure forward-compatibility as new fields are added to the lightning gossip protocol.
		///
		/// Returns a copy of the field.
		public func getExcessData() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_get_excess_data(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Excess data which was signed as a part of the message which we do not (yet) understand how
		/// to decode.
		///
		/// This is stored to ensure forward-compatibility as new fields are added to the lightning gossip protocol.
		public func setExcessData(val: [UInt8]) {
			// native call variable prep

			let valVector = Vec_u8Z(
				array: val, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_set_excess_data(thisPtrPointer, valVector.cType!)
				}


			// cleanup

			// valVector.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Constructs a new UnsignedNodeAnnouncement given each field
		public init(
			featuresArg: NodeFeatures, timestampArg: UInt32, nodeIdArg: NodeId, rgbArg: [UInt8], aliasArg: NodeAlias,
			addressesArg: [SocketAddress], excessAddressDataArg: [UInt8], excessDataArg: [UInt8]
		) {
			// native call variable prep

			let rgbArgPrimitiveWrapper = ThreeBytes(
				value: rgbArg, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)")

			let addressesArgVector = Vec_SocketAddressZ(
				array: addressesArg, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)"
			)
			.dangle()

			let excessAddressDataArgVector = Vec_u8Z(
				array: excessAddressDataArg,
				instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)"
			)
			.dangle()

			let excessDataArgVector = Vec_u8Z(
				array: excessDataArg, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult = UnsignedNodeAnnouncement_new(
				featuresArg.dynamicallyDangledClone().cType!, timestampArg, nodeIdArg.dynamicallyDangledClone().cType!,
				rgbArgPrimitiveWrapper.cType!, aliasArg.dynamicallyDangledClone().cType!, addressesArgVector.cType!,
				excessAddressDataArgVector.cType!, excessDataArgVector.cType!)

			// cleanup

			// for elided types, we need this
			rgbArgPrimitiveWrapper.noOpRetain()

			// addressesArgVector.noOpRetain()

			// excessAddressDataArgVector.noOpRetain()

			// excessDataArgVector.noOpRetain()

			self.initialCFreeability = nativeCallResult.is_owned


			/*
						// return value (do some wrapping)
						let returnValue = UnsignedNodeAnnouncement(cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0,
					instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)")


		}

		/// Creates a copy of the UnsignedNodeAnnouncement
		internal func clone() -> UnsignedNodeAnnouncement {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = UnsignedNodeAnnouncement(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Generates a non-cryptographic 64-bit hash of the UnsignedNodeAnnouncement.
		public func hash() -> UInt64 {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_hash(oPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Checks if two UnsignedNodeAnnouncements contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		/// Two objects with NULL inner values will be considered "equal" here.
		public class func eq(a: UnsignedNodeAnnouncement, b: UnsignedNodeAnnouncement) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
						UnsignedNodeAnnouncement_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Serialize the UnsignedNodeAnnouncement object into a byte array which can be read by UnsignedNodeAnnouncement_read
		public func write() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKUnsignedNodeAnnouncement>) in
					UnsignedNodeAnnouncement_write(objPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Read a UnsignedNodeAnnouncement from a byte array, created by UnsignedNodeAnnouncement_write
		public class func read(ser: [UInt8]) -> Result_UnsignedNodeAnnouncementDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = UnsignedNodeAnnouncement_read(serPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_UnsignedNodeAnnouncementDecodeErrorZ(
				cType: nativeCallResult, instantiationContext: "UnsignedNodeAnnouncement.swift::\(#function):\(#line)")


			return returnValue
		}


		/// Indicates that this is the only struct which contains the same pointer.
		/// Rust functions which take ownership of an object provided via an argument require
		/// this to be true and invalidate the object pointed to by inner.
		public func isOwned() -> Bool {
			// return value (do some wrapping)
			let returnValue = self.cType!.is_owned

			return returnValue
		}


		internal func danglingClone() -> UnsignedNodeAnnouncement {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		internal func dynamicallyDangledClone() -> UnsignedNodeAnnouncement {
			let dangledClone = self.clone()
			// if it's owned, i. e. controlled by Rust, it should dangle on our end
			dangledClone.dangling = dangledClone.cType!.is_owned
			return dangledClone
		}

		internal func setCFreeability(freeable: Bool) -> UnsignedNodeAnnouncement {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> UnsignedNodeAnnouncement {
			self.dangling = self.cType!.is_owned
			return self
		}

		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing UnsignedNodeAnnouncement \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing UnsignedNodeAnnouncement \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

