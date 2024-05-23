#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// A CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ represents the result of a fallible operation,
/// containing a crate::lightning::offers::refund::RefundMaybeWithDerivedMetadataBuilder on success and a crate::lightning::offers::parse::Bolt12SemanticError on failure.
/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
public typealias Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ = Bindings
	.Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ

extension Bindings {

	/// A CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ represents the result of a fallible operation,
	/// containing a crate::lightning::offers::refund::RefundMaybeWithDerivedMetadataBuilder on success and a crate::lightning::offers::parse::Bolt12SemanticError on failure.
	/// `result_ok` indicates the overall state, and the contents are provided via `contents`.
	public class Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKCResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ?

		internal init(
			cType: LDKCResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ, instantiationContext: String
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(
			cType: LDKCResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ, instantiationContext: String,
			anchor: NativeTypeWrapper
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKCResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ, instantiationContext: String,
			anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		/// Creates a new CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ in the success state.
		public class func initWithOk(o: RefundMaybeWithDerivedMetadataBuilder)
			-> Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ
		{
			// native call variable prep


			// native method call
			let nativeCallResult = CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ_ok(
				o.dynamicallyDangledClone().cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ(
				cType: nativeCallResult,
				instantiationContext:
					"Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Creates a new CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ in the error state.
		public class func initWithErr(e: Bolt12SemanticError)
			-> Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ
		{
			// native call variable prep


			// native method call
			let nativeCallResult = CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ_err(e.getCValue())

			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ(
				cType: nativeCallResult,
				instantiationContext:
					"Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Frees any resources used by the CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Creates a new CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ which has the same data as `orig`
		/// but with all dynamically-allocated buffers duplicated in new buffers.
		internal func clone() -> Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) {
					(origPointer: UnsafePointer<LDKCResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ>)
					in
					CResult_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ(
				cType: nativeCallResult,
				instantiationContext:
					"Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ.swift::\(#function):\(#line)")


			return returnValue
		}


		public func isOk() -> Bool {
			return self.cType?.result_ok == true
		}


		public func getError() -> Bolt12SemanticError? {
			if self.cType?.result_ok == false {
				return Bolt12SemanticError(value: self.cType!.contents.err.pointee)
			}
			return nil
		}


		public func getValue() -> RefundMaybeWithDerivedMetadataBuilder? {
			if self.cType?.result_ok == true {
				return RefundMaybeWithDerivedMetadataBuilder(
					cType: self.cType!.contents.result.pointee,
					instantiationContext:
						"Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ.swift::\(#function):\(#line)",
					anchor: self)
			}
			return nil
		}


		internal func danglingClone() -> Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ {
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
					Bindings.print(
						"Freeing Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing Result_RefundMaybeWithDerivedMetadataBuilderBolt12SemanticErrorZ \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}

}