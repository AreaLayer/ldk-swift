// necessary for abort() calls
import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


/// A helper trait that describes an on-chain wallet capable of returning a (change) destination
/// script.
public typealias ChangeDestinationSource = Bindings.ChangeDestinationSource

extension Bindings {

	/// A helper trait that describes an on-chain wallet capable of returning a (change) destination
	/// script.
	open class ChangeDestinationSource: NativeTraitWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKChangeDestinationSource?

		internal init(cType: LDKChangeDestinationSource, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKChangeDestinationSource, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKChangeDestinationSource, instantiationContext: String, anchor: NativeTypeWrapper,
			dangle: Bool = false
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
					conflictAvoidingVariableName: 0,
					instantiationContext: "ChangeDestinationSource.swift::\(#function):\(#line)")

			let thisArg = Bindings.instanceToPointer(instance: self)


			func getChangeDestinationScriptLambda(this_arg: UnsafeRawPointer?) -> LDKCResult_CVec_u8ZNoneZ {
				let instance: ChangeDestinationSource = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "ChangeDestinationSource::getChangeDestinationScriptLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.getChangeDestinationScript()

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult.danglingClone().cType!

				return returnValue
			}

			func freeLambda(this_arg: UnsafeMutableRawPointer?) {
				let instance: ChangeDestinationSource = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "ChangeDestinationSource::freeLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.free()

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult

				return returnValue
			}


			self.cType = LDKChangeDestinationSource(
				this_arg: thisArg,
				get_change_destination_script: getChangeDestinationScriptLambda,
				free: freeLambda
			)
		}


		/// Returns a script pubkey which can be used as a change destination for
		/// [`OutputSpender::spend_spendable_outputs`].
		///
		/// This method should return a different value each time it is called, to avoid linking
		/// on-chain funds controlled to the same user.
		open func getChangeDestinationScript() -> Result_CVec_u8ZNoneZ {

			Bindings.print(
				"Error: ChangeDestinationSource::getChangeDestinationScript MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
				severity: .ERROR)
			abort()
		}

		/// Frees any resources associated with this object given its this_arg pointer.
		/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
		internal func free() {

			// TODO: figure out something smarter
			return ()  // the empty tuple (aka Void) is necessary because Swift is whitespace-agnostic

			Bindings.print(
				"Error: ChangeDestinationSource::free MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
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
						"Freeing ChangeDestinationSource \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}
				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing ChangeDestinationSource \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}
	}

	internal class NativelyImplementedChangeDestinationSource: ChangeDestinationSource {

		/// Returns a script pubkey which can be used as a change destination for
		/// [`OutputSpender::spend_spendable_outputs`].
		///
		/// This method should return a different value each time it is called, to avoid linking
		/// on-chain funds controlled to the same user.
		public override func getChangeDestinationScript() -> Result_CVec_u8ZNoneZ {
			// native call variable prep


			// native method call
			let nativeCallResult = self.cType!.get_change_destination_script(self.cType!.this_arg)

			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_CVec_u8ZNoneZ(
				cType: nativeCallResult, instantiationContext: "ChangeDestinationSource.swift::\(#function):\(#line)")

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
