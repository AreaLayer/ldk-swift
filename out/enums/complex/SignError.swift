import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


///
public typealias SignError = Bindings.SignError

extension Bindings {

	/// Error when signing messages.
	public class SignError: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKSignError?

		internal init(cType: LDKSignError, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKSignError, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKSignError, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public enum SignErrorType {

			/// User-defined error when signing the message.
			case Signing

			/// Error when verifying the produced signature using the given pubkey.
			case Verification

		}

		public func getValueType() -> SignErrorType {
			switch self.cType!.tag {
				case LDKSignError_Signing:
					return .Signing

				case LDKSignError_Verification:
					return .Verification

				default:
					Bindings.print("Error: Invalid value type for SignError! Aborting.", severity: .ERROR)
					abort()
			}

		}


		/// Frees any resources used by the SignError
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = SignError_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Creates a copy of the SignError
		internal func clone() -> SignError {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKSignError>) in
					SignError_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = SignError(
				cType: nativeCallResult, instantiationContext: "SignError.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new Signing-variant SignError
		public class func initWithSigning() -> SignError {
			// native call variable prep


			// native method call
			let nativeCallResult = SignError_signing()

			// cleanup


			// return value (do some wrapping)
			let returnValue = SignError(
				cType: nativeCallResult, instantiationContext: "SignError.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new Verification-variant SignError
		public class func initWithVerification(a: Secp256k1Error) -> SignError {
			// native call variable prep


			// native method call
			let nativeCallResult = SignError_verification(a.getCValue())

			// cleanup


			// return value (do some wrapping)
			let returnValue = SignError(
				cType: nativeCallResult, instantiationContext: "SignError.swift::\(#function):\(#line)")


			return returnValue
		}


		public func getValueAsVerification() -> Secp256k1Error? {
			if self.cType?.tag != LDKSignError_Verification {
				return nil
			}

			return Secp256k1Error(value: self.cType!.verification)
		}


		internal func danglingClone() -> SignError {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print("Freeing SignError \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing SignError \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}

}
