// necessary for abort() calls
import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


/// A function for signing an [`UnsignedInvoiceRequest`].
public typealias SignInvoiceRequestFn = Bindings.SignInvoiceRequestFn

extension Bindings {

	/// A function for signing an [`UnsignedInvoiceRequest`].
	open class SignInvoiceRequestFn: NativeTraitWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKSignInvoiceRequestFn?

		internal init(cType: LDKSignInvoiceRequestFn, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKSignInvoiceRequestFn, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKSignInvoiceRequestFn, instantiationContext: String, anchor: NativeTypeWrapper,
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
					instantiationContext: "SignInvoiceRequestFn.swift::\(#function):\(#line)")

			let thisArg = Bindings.instanceToPointer(instance: self)


			func signInvoiceRequestLambda(
				this_arg: UnsafeRawPointer?, message: UnsafePointer<LDKUnsignedInvoiceRequest>
			) -> LDKCResult_SchnorrSignatureNoneZ {
				let instance: SignInvoiceRequestFn = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "SignInvoiceRequestFn::signInvoiceRequestLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.signInvoiceRequest(
					message: UnsignedInvoiceRequest(
						cType: message.pointee,
						instantiationContext: "SignInvoiceRequestFn.swift::init()::\(#function):\(#line)"
					)
					.dangle().clone())

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult.danglingClone().cType!

				return returnValue
			}

			func freeLambda(this_arg: UnsafeMutableRawPointer?) {
				let instance: SignInvoiceRequestFn = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "SignInvoiceRequestFn::freeLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.free()

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult

				return returnValue
			}


			self.cType = LDKSignInvoiceRequestFn(
				this_arg: thisArg,
				sign_invoice_request: signInvoiceRequestLambda,
				free: freeLambda
			)
		}


		/// Signs a [`TaggedHash`] computed over the merkle root of `message`'s TLV stream.
		open func signInvoiceRequest(message: UnsignedInvoiceRequest) -> Result_SchnorrSignatureNoneZ {

			Bindings.print(
				"Error: SignInvoiceRequestFn::signInvoiceRequest MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
				severity: .ERROR)
			abort()
		}

		/// Frees any resources associated with this object given its this_arg pointer.
		/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
		internal func free() {

			// TODO: figure out something smarter
			return ()  // the empty tuple (aka Void) is necessary because Swift is whitespace-agnostic

			Bindings.print(
				"Error: SignInvoiceRequestFn::free MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
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
						"Freeing SignInvoiceRequestFn \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}
				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing SignInvoiceRequestFn \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}
	}

	internal class NativelyImplementedSignInvoiceRequestFn: SignInvoiceRequestFn {

		/// Signs a [`TaggedHash`] computed over the merkle root of `message`'s TLV stream.
		public override func signInvoiceRequest(message: UnsignedInvoiceRequest) -> Result_SchnorrSignatureNoneZ {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: message.cType!) { (messagePointer: UnsafePointer<LDKUnsignedInvoiceRequest>) in
					self.cType!.sign_invoice_request(self.cType!.this_arg, messagePointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_SchnorrSignatureNoneZ(
				cType: nativeCallResult, instantiationContext: "SignInvoiceRequestFn.swift::\(#function):\(#line)")

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
