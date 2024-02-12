#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// A tx_remove_output message for removing an output during interactive transaction construction.
public typealias TxRemoveOutput = Bindings.TxRemoveOutput

extension Bindings {


	/// A tx_remove_output message for removing an output during interactive transaction construction.
	public class TxRemoveOutput: NativeTypeWrapper {

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

		internal var cType: LDKTxRemoveOutput?

		internal init(cType: LDKTxRemoveOutput, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKTxRemoveOutput, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKTxRemoveOutput, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		/// Frees any resources used by the TxRemoveOutput, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = TxRemoveOutput_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The channel ID
		public func getChannelId() -> [UInt8]? {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTxRemoveOutput>) in
					TxRemoveOutput_get_channel_id(thisPtrPointer)
				}


			// cleanup

			guard let nativeCallResult = nativeCallResult else {
				return nil
			}


			// return value (do some wrapping)
			let returnValue = Bindings.UInt8Tuple32ToArray(tuple: nativeCallResult.pointee)


			return returnValue
		}

		/// The channel ID
		public func setChannelId(val: [UInt8]) {
			// native call variable prep

			let valPrimitiveWrapper = ThirtyTwoBytes(
				value: val, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTxRemoveOutput>) in
					TxRemoveOutput_set_channel_id(thisPtrPointer, valPrimitiveWrapper.cType!)
				}


			// cleanup

			// for elided types, we need this
			valPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The serial ID of the output to be removed
		public func getSerialId() -> UInt64 {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTxRemoveOutput>) in
					TxRemoveOutput_get_serial_id(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The serial ID of the output to be removed
		public func setSerialId(val: UInt64) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTxRemoveOutput>) in
					TxRemoveOutput_set_serial_id(thisPtrPointer, val)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Constructs a new TxRemoveOutput given each field
		public init(channelIdArg: [UInt8], serialIdArg: UInt64) {
			// native call variable prep

			let channelIdArgPrimitiveWrapper = ThirtyTwoBytes(
				value: channelIdArg, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = TxRemoveOutput_new(channelIdArgPrimitiveWrapper.cType!, serialIdArg)

			// cleanup

			// for elided types, we need this
			channelIdArgPrimitiveWrapper.noOpRetain()

			self.initialCFreeability = nativeCallResult.is_owned


			/*
						// return value (do some wrapping)
						let returnValue = TxRemoveOutput(cType: nativeCallResult, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)"
				)


		}

		/// Creates a copy of the TxRemoveOutput
		internal func clone() -> TxRemoveOutput {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKTxRemoveOutput>) in
					TxRemoveOutput_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = TxRemoveOutput(
				cType: nativeCallResult, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Generates a non-cryptographic 64-bit hash of the TxRemoveOutput.
		public func hash() -> UInt64 {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKTxRemoveOutput>) in
					TxRemoveOutput_hash(oPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Checks if two TxRemoveOutputs contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		/// Two objects with NULL inner values will be considered "equal" here.
		public class func eq(a: TxRemoveOutput, b: TxRemoveOutput) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKTxRemoveOutput>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKTxRemoveOutput>) in
						TxRemoveOutput_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Serialize the TxRemoveOutput object into a byte array which can be read by TxRemoveOutput_read
		public func write() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKTxRemoveOutput>) in
					TxRemoveOutput_write(objPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Read a TxRemoveOutput from a byte array, created by TxRemoveOutput_write
		public class func read(ser: [UInt8]) -> Result_TxRemoveOutputDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = TxRemoveOutput_read(serPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_TxRemoveOutputDecodeErrorZ(
				cType: nativeCallResult, instantiationContext: "TxRemoveOutput.swift::\(#function):\(#line)")


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


		internal func danglingClone() -> TxRemoveOutput {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		internal func dynamicallyDangledClone() -> TxRemoveOutput {
			let dangledClone = self.clone()
			// if it's owned, i. e. controlled by Rust, it should dangle on our end
			dangledClone.dangling = dangledClone.cType!.is_owned
			return dangledClone
		}

		internal func setCFreeability(freeable: Bool) -> TxRemoveOutput {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> TxRemoveOutput {
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
						"Freeing TxRemoveOutput \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing TxRemoveOutput \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

