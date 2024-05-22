// necessary for abort() calls
import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


/// A function for signing an [`UnsignedBolt12Invoice`].
public typealias SignBolt12InvoiceFn = Bindings.SignBolt12InvoiceFn

extension Bindings {

	/// A function for signing an [`UnsignedBolt12Invoice`].
	open class SignBolt12InvoiceFn: NativeTraitWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKSignBolt12InvoiceFn?

		internal init(cType: LDKSignBolt12InvoiceFn, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKSignBolt12InvoiceFn, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKSignBolt12InvoiceFn, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
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
					instantiationContext: "SignBolt12InvoiceFn.swift::\(#function):\(#line)")

			let thisArg = Bindings.instanceToPointer(instance: self)


			func signInvoiceLambda(this_arg: UnsafeRawPointer?, message: UnsafePointer<LDKUnsignedBolt12Invoice>)
				-> LDKCResult_SchnorrSignatureNoneZ
			{
				let instance: SignBolt12InvoiceFn = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "SignBolt12InvoiceFn::signInvoiceLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.signInvoice(
					message: UnsignedBolt12Invoice(
						cType: message.pointee,
						instantiationContext: "SignBolt12InvoiceFn.swift::init()::\(#function):\(#line)"
					)
					.dangle().clone())

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult.danglingClone().cType!

				return returnValue
			}

			func freeLambda(this_arg: UnsafeMutableRawPointer?) {
				let instance: SignBolt12InvoiceFn = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "SignBolt12InvoiceFn::freeLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.free()

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult

				return returnValue
			}


			self.cType = LDKSignBolt12InvoiceFn(
				this_arg: thisArg,
				sign_invoice: signInvoiceLambda,
				free: freeLambda
			)
		}


		/// Signs a [`TaggedHash`] computed over the merkle root of `message`'s TLV stream.
		open func signInvoice(message: UnsignedBolt12Invoice) -> Result_SchnorrSignatureNoneZ {

			Bindings.print(
				"Error: SignBolt12InvoiceFn::signInvoice MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
				severity: .ERROR)
			abort()
		}

		/// Frees any resources associated with this object given its this_arg pointer.
		/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
		internal func free() {

			// TODO: figure out something smarter
			return ()  // the empty tuple (aka Void) is necessary because Swift is whitespace-agnostic

			Bindings.print(
				"Error: SignBolt12InvoiceFn::free MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
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
						"Freeing SignBolt12InvoiceFn \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}
				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing SignBolt12InvoiceFn \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}
	}

	internal class NativelyImplementedSignBolt12InvoiceFn: SignBolt12InvoiceFn {

		/// Signs a [`TaggedHash`] computed over the merkle root of `message`'s TLV stream.
		public override func signInvoice(message: UnsignedBolt12Invoice) -> Result_SchnorrSignatureNoneZ {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: message.cType!) { (messagePointer: UnsafePointer<LDKUnsignedBolt12Invoice>) in
					self.cType!.sign_invoice(self.cType!.this_arg, messagePointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_SchnorrSignatureNoneZ(
				cType: nativeCallResult, instantiationContext: "SignBolt12InvoiceFn.swift::\(#function):\(#line)")

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
