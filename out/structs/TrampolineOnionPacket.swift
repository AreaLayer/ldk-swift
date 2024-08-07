#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// BOLT 4 onion packet including hop data for the next peer.
public typealias TrampolineOnionPacket = Bindings.TrampolineOnionPacket

extension Bindings {


	/// BOLT 4 onion packet including hop data for the next peer.
	public class TrampolineOnionPacket: NativeTypeWrapper {

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

		internal var cType: LDKTrampolineOnionPacket?

		internal init(cType: LDKTrampolineOnionPacket, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKTrampolineOnionPacket, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKTrampolineOnionPacket, instantiationContext: String, anchor: NativeTypeWrapper,
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


		/// Frees any resources used by the TrampolineOnionPacket, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = TrampolineOnionPacket_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Bolt 04 version number
		public func getVersion() -> UInt8 {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_get_version(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Bolt 04 version number
		public func setVersion(val: UInt8) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_set_version(thisPtrPointer, val)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// A random sepc256k1 point, used to build the ECDH shared secret to decrypt hop_data
		public func getPublicKey() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_get_public_key(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = PublicKey(
				cType: nativeCallResult, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// A random sepc256k1 point, used to build the ECDH shared secret to decrypt hop_data
		public func setPublicKey(val: [UInt8]) {
			// native call variable prep

			let valPrimitiveWrapper = PublicKey(
				value: val, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_set_public_key(thisPtrPointer, valPrimitiveWrapper.cType!)
				}


			// cleanup

			// for elided types, we need this
			valPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Encrypted payload for the next hop
		///
		/// Returns a copy of the field.
		public func getHopData() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_get_hop_data(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Encrypted payload for the next hop
		public func setHopData(val: [UInt8]) {
			// native call variable prep

			let valVector = Vec_u8Z(
				array: val, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_set_hop_data(thisPtrPointer, valVector.cType!)
				}


			// cleanup

			// valVector.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// HMAC to verify the integrity of hop_data
		public func getHmac() -> [UInt8]? {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_get_hmac(thisPtrPointer)
				}


			// cleanup

			guard let nativeCallResult = nativeCallResult else {
				return nil
			}


			// return value (do some wrapping)
			let returnValue = Bindings.UInt8Tuple32ToArray(tuple: nativeCallResult.pointee)


			return returnValue
		}

		/// HMAC to verify the integrity of hop_data
		public func setHmac(val: [UInt8]) {
			// native call variable prep

			let valPrimitiveWrapper = ThirtyTwoBytes(
				value: val, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_set_hmac(thisPtrPointer, valPrimitiveWrapper.cType!)
				}


			// cleanup

			// for elided types, we need this
			valPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Constructs a new TrampolineOnionPacket given each field
		public init(versionArg: UInt8, publicKeyArg: [UInt8], hopDataArg: [UInt8], hmacArg: [UInt8]) {
			// native call variable prep

			let publicKeyArgPrimitiveWrapper = PublicKey(
				value: publicKeyArg, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)")

			let hopDataArgVector = Vec_u8Z(
				array: hopDataArg, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)"
			)
			.dangle()

			let hmacArgPrimitiveWrapper = ThirtyTwoBytes(
				value: hmacArg, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = TrampolineOnionPacket_new(
				versionArg, publicKeyArgPrimitiveWrapper.cType!, hopDataArgVector.cType!, hmacArgPrimitiveWrapper.cType!
			)

			// cleanup

			// for elided types, we need this
			publicKeyArgPrimitiveWrapper.noOpRetain()

			// hopDataArgVector.noOpRetain()

			// for elided types, we need this
			hmacArgPrimitiveWrapper.noOpRetain()

			self.initialCFreeability = nativeCallResult.is_owned


			/*
						// return value (do some wrapping)
						let returnValue = TrampolineOnionPacket(cType: nativeCallResult, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0,
					instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)")


		}

		/// Creates a copy of the TrampolineOnionPacket
		internal func clone() -> TrampolineOnionPacket {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = TrampolineOnionPacket(
				cType: nativeCallResult, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Generates a non-cryptographic 64-bit hash of the TrampolineOnionPacket.
		public func hash() -> UInt64 {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_hash(oPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Checks if two TrampolineOnionPackets contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		/// Two objects with NULL inner values will be considered "equal" here.
		public class func eq(a: TrampolineOnionPacket, b: TrampolineOnionPacket) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKTrampolineOnionPacket>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
						TrampolineOnionPacket_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Serialize the TrampolineOnionPacket object into a byte array which can be read by TrampolineOnionPacket_read
		public func write() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKTrampolineOnionPacket>) in
					TrampolineOnionPacket_write(objPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "TrampolineOnionPacket.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


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


		internal func danglingClone() -> TrampolineOnionPacket {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		internal func dynamicallyDangledClone() -> TrampolineOnionPacket {
			let dangledClone = self.clone()
			// if it's owned, i. e. controlled by Rust, it should dangle on our end
			dangledClone.dangling = dangledClone.cType!.is_owned
			return dangledClone
		}

		internal func setCFreeability(freeable: Bool) -> TrampolineOnionPacket {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> TrampolineOnionPacket {
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
						"Freeing TrampolineOnionPacket \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing TrampolineOnionPacket \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

