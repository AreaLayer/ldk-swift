// necessary for abort() calls
import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


/// A trait that describes a wallet capable of creating a spending [`Transaction`] from a set of
/// [`SpendableOutputDescriptor`]s.
public typealias OutputSpender = Bindings.OutputSpender

extension Bindings {

	/// A trait that describes a wallet capable of creating a spending [`Transaction`] from a set of
	/// [`SpendableOutputDescriptor`]s.
	open class OutputSpender: NativeTraitWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKOutputSpender?

		internal init(cType: LDKOutputSpender, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKOutputSpender, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKOutputSpender, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public init() {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0, instantiationContext: "OutputSpender.swift::\(#function):\(#line)")

			let thisArg = Bindings.instanceToPointer(instance: self)


			func spendSpendableOutputsLambda(
				this_arg: UnsafeRawPointer?, descriptors: LDKCVec_SpendableOutputDescriptorZ, outputs: LDKCVec_TxOutZ,
				change_destination_script: LDKCVec_u8Z, feerate_sat_per_1000_weight: UInt32, locktime: LDKCOption_u32Z
			) -> LDKCResult_TransactionNoneZ {
				let instance: OutputSpender = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "OutputSpender::spendSpendableOutputsLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.spendSpendableOutputs(
					descriptors: Vec_SpendableOutputDescriptorZ(
						cType: descriptors, instantiationContext: "OutputSpender.swift::init()::\(#function):\(#line)"
					)
					.getValue(),
					outputs: Vec_TxOutZ(
						cType: outputs, instantiationContext: "OutputSpender.swift::init()::\(#function):\(#line)"
					)
					.getValue(),
					changeDestinationScript: Vec_u8Z(
						cType: change_destination_script,
						instantiationContext: "OutputSpender.swift::init()::\(#function):\(#line)"
					)
					.getValue(), feerateSatPer1000Weight: feerate_sat_per_1000_weight,
					locktime: Option_u32Z(
						cType: locktime, instantiationContext: "OutputSpender.swift::init()::\(#function):\(#line)"
					)
					.getValue())

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult.danglingClone().cType!

				return returnValue
			}

			func freeLambda(this_arg: UnsafeMutableRawPointer?) {
				let instance: OutputSpender = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "OutputSpender::freeLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.free()

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult

				return returnValue
			}


			self.cType = LDKOutputSpender(
				this_arg: thisArg,
				spend_spendable_outputs: spendSpendableOutputsLambda,
				free: freeLambda
			)
		}


		/// Creates a [`Transaction`] which spends the given descriptors to the given outputs, plus an
		/// output to the given change destination (if sufficient change value remains). The
		/// transaction will have a feerate, at least, of the given value.
		///
		/// The `locktime` argument is used to set the transaction's locktime. If `None`, the
		/// transaction will have a locktime of 0. It it recommended to set this to the current block
		/// height to avoid fee sniping, unless you have some specific reason to use a different
		/// locktime.
		///
		/// Returns `Err(())` if the output value is greater than the input value minus required fee,
		/// if a descriptor was duplicated, or if an output descriptor `script_pubkey`
		/// does not match the one we can spend.
		open func spendSpendableOutputs(
			descriptors: [SpendableOutputDescriptor], outputs: [TxOut], changeDestinationScript: [UInt8],
			feerateSatPer1000Weight: UInt32, locktime: UInt32?
		) -> Result_TransactionNoneZ {

			Bindings.print(
				"Error: OutputSpender::spendSpendableOutputs MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
				severity: .ERROR)
			abort()
		}

		/// Frees any resources associated with this object given its this_arg pointer.
		/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
		internal func free() {

			// TODO: figure out something smarter
			return ()  // the empty tuple (aka Void) is necessary because Swift is whitespace-agnostic

			Bindings.print(
				"Error: OutputSpender::free MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
				severity: .ERROR)
			abort()
		}


		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing OutputSpender \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}
				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing OutputSpender \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}
	}

	internal class NativelyImplementedOutputSpender: OutputSpender {

		/// Creates a [`Transaction`] which spends the given descriptors to the given outputs, plus an
		/// output to the given change destination (if sufficient change value remains). The
		/// transaction will have a feerate, at least, of the given value.
		///
		/// The `locktime` argument is used to set the transaction's locktime. If `None`, the
		/// transaction will have a locktime of 0. It it recommended to set this to the current block
		/// height to avoid fee sniping, unless you have some specific reason to use a different
		/// locktime.
		///
		/// Returns `Err(())` if the output value is greater than the input value minus required fee,
		/// if a descriptor was duplicated, or if an output descriptor `script_pubkey`
		/// does not match the one we can spend.
		public override func spendSpendableOutputs(
			descriptors: [SpendableOutputDescriptor], outputs: [TxOut], changeDestinationScript: [UInt8],
			feerateSatPer1000Weight: UInt32, locktime: UInt32?
		) -> Result_TransactionNoneZ {
			// native call variable prep

			let descriptorsVector = Vec_SpendableOutputDescriptorZ(
				array: descriptors, instantiationContext: "OutputSpender.swift::\(#function):\(#line)"
			)
			.dangle()

			let outputsVector = Vec_TxOutZ(
				array: outputs, instantiationContext: "OutputSpender.swift::\(#function):\(#line)"
			)
			.dangle()

			let changeDestinationScriptVector = Vec_u8Z(
				array: changeDestinationScript, instantiationContext: "OutputSpender.swift::\(#function):\(#line)"
			)
			.dangle()

			let locktimeOption = Option_u32Z(
				some: locktime, instantiationContext: "OutputSpender.swift::\(#function):\(#line)"
			)
			.danglingClone()


			// native method call
			let nativeCallResult = self.cType!
				.spend_spendable_outputs(
					self.cType!.this_arg, descriptorsVector.cType!, outputsVector.cType!,
					changeDestinationScriptVector.cType!, feerateSatPer1000Weight, locktimeOption.cType!)

			// cleanup

			// descriptorsVector.noOpRetain()

			// outputsVector.noOpRetain()

			// changeDestinationScriptVector.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_TransactionNoneZ(
				cType: nativeCallResult, instantiationContext: "OutputSpender.swift::\(#function):\(#line)")

			return returnValue
		}

		/// Frees any resources associated with this object given its this_arg pointer.
		/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
		public override func free() {
			// native call variable prep


			// natively wrapped traits may not necessarily be properly initialized
			// for now just don't free these things
			// self.cType?.free(self.cType?.this_arg)
			return


			// native method call
			let nativeCallResult = self.cType!.free(self.cType!.this_arg)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult

			return returnValue
		}

	}

}
