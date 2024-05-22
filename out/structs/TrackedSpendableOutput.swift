#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// The state of a spendable output currently tracked by an [`OutputSweeper`].
public typealias TrackedSpendableOutput = Bindings.TrackedSpendableOutput

extension Bindings {


	/// The state of a spendable output currently tracked by an [`OutputSweeper`].
	public class TrackedSpendableOutput: NativeTypeWrapper {

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

		internal var cType: LDKTrackedSpendableOutput?

		internal init(cType: LDKTrackedSpendableOutput, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKTrackedSpendableOutput, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKTrackedSpendableOutput, instantiationContext: String, anchor: NativeTypeWrapper,
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


		/// Frees any resources used by the TrackedSpendableOutput, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = TrackedSpendableOutput_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The tracked output descriptor.
		public func getDescriptor() -> SpendableOutputDescriptor {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_get_descriptor(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = SpendableOutputDescriptor(
				cType: nativeCallResult, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)",
				anchor: self)


			return returnValue
		}

		/// The tracked output descriptor.
		public func setDescriptor(val: SpendableOutputDescriptor) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_set_descriptor(thisPtrPointer, val.danglingClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The channel this output belongs to.
		///
		/// Will be `None` if no `channel_id` was given to [`OutputSweeper::track_spendable_outputs`]
		///
		/// Note that the return value (or a relevant inner pointer) may be NULL or all-0s to represent None
		public func getChannelId() -> ChannelId? {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_get_channel_id(thisPtrPointer)
				}


			// cleanup

			// COMMENT-DEDUCED OPTIONAL INFERENCE AND HANDLING:
			// Type group: RustStruct
			// Type: LDKChannelId

			if nativeCallResult.inner == nil {
				return nil
			}

			let pointerValue = UInt(bitPattern: nativeCallResult.inner)
			if pointerValue == 0 {
				return nil
			}


			// return value (do some wrapping)
			let returnValue = ChannelId(
				cType: nativeCallResult, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// The channel this output belongs to.
		///
		/// Will be `None` if no `channel_id` was given to [`OutputSweeper::track_spendable_outputs`]
		///
		/// Note that val (or a relevant inner pointer) may be NULL or all-0s to represent None
		public func setChannelId(val: ChannelId) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_set_channel_id(thisPtrPointer, val.dynamicallyDangledClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The current status of the output spend.
		public func getStatus() -> OutputSpendStatus {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_get_status(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = OutputSpendStatus(
				cType: nativeCallResult, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)",
				anchor: self)


			return returnValue
		}

		/// The current status of the output spend.
		public func setStatus(val: OutputSpendStatus) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_set_status(thisPtrPointer, val.danglingClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Constructs a new TrackedSpendableOutput given each field
		///
		/// Note that channel_id_arg (or a relevant inner pointer) may be NULL or all-0s to represent None
		public init(descriptorArg: SpendableOutputDescriptor, channelIdArg: ChannelId, statusArg: OutputSpendStatus) {
			// native call variable prep


			// native method call
			let nativeCallResult = TrackedSpendableOutput_new(
				descriptorArg.danglingClone().cType!, channelIdArg.dynamicallyDangledClone().cType!,
				statusArg.danglingClone().cType!)

			// cleanup

			self.initialCFreeability = nativeCallResult.is_owned


			/*
						// return value (do some wrapping)
						let returnValue = TrackedSpendableOutput(cType: nativeCallResult, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0,
					instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)")


		}

		/// Creates a copy of the TrackedSpendableOutput
		internal func clone() -> TrackedSpendableOutput {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = TrackedSpendableOutput(
				cType: nativeCallResult, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Checks if two TrackedSpendableOutputs contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		/// Two objects with NULL inner values will be considered "equal" here.
		public class func eq(a: TrackedSpendableOutput, b: TrackedSpendableOutput) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKTrackedSpendableOutput>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKTrackedSpendableOutput>) in
						TrackedSpendableOutput_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Returns whether the output is spent in the given transaction.
		public func isSpentIn(tx: [UInt8]) -> Bool {
			// native call variable prep

			let txPrimitiveWrapper = Transaction(
				value: tx, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_is_spent_in(thisArgPointer, txPrimitiveWrapper.cType!)
				}


			// cleanup

			// for elided types, we need this
			txPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Serialize the TrackedSpendableOutput object into a byte array which can be read by TrackedSpendableOutput_read
		public func write() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKTrackedSpendableOutput>) in
					TrackedSpendableOutput_write(objPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Read a TrackedSpendableOutput from a byte array, created by TrackedSpendableOutput_write
		public class func read(ser: [UInt8]) -> Result_TrackedSpendableOutputDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = TrackedSpendableOutput_read(serPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_TrackedSpendableOutputDecodeErrorZ(
				cType: nativeCallResult, instantiationContext: "TrackedSpendableOutput.swift::\(#function):\(#line)")


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


		internal func danglingClone() -> TrackedSpendableOutput {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		internal func dynamicallyDangledClone() -> TrackedSpendableOutput {
			let dangledClone = self.clone()
			// if it's owned, i. e. controlled by Rust, it should dangle on our end
			dangledClone.dangling = dangledClone.cType!.is_owned
			return dangledClone
		}

		internal func setCFreeability(freeable: Bool) -> TrackedSpendableOutput {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> TrackedSpendableOutput {
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
						"Freeing TrackedSpendableOutput \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing TrackedSpendableOutput \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

