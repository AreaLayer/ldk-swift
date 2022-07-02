#if SWIFT_PACKAGE
import LDKHeaders
#endif

public class Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    internal var cOpaqueStruct: LDKCResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ?

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ(contents: LDKCResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZPtr(), result_ok: true)
        			super.init(conflictAvoidingVariableName: 0)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
	}

	public init(pointer: LDKCResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ, anchor: NativeTypeWrapper){
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
		self.dangling = true
		try! self.addAnchor(anchor: anchor)
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> PaymentSendFailure? {
				if self.cOpaqueStruct?.result_ok == false {
					return PaymentSendFailure(pointer: self.cOpaqueStruct!.contents.err.pointee, anchor: self)
				}
				return nil
			}
			
			public func getValue() -> C2Tuple_PaymentHashPaymentIdZ? {
				if self.cOpaqueStruct?.result_ok == true {
					return C2Tuple_PaymentHashPaymentIdZ(pointer: self.cOpaqueStruct!.contents.result.pointee, anchor: self)
				}
				return nil
			}
			
    public class func ok(o: C2Tuple_PaymentHashPaymentIdZ) -> Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ {
    	
        return Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ(pointer: CResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ_ok(o.danglingClone().cOpaqueStruct!));
    }

    public class func err(e: PaymentSendFailure) -> Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ {
    	
        return Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ(pointer: CResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							Bindings.print("Freeing Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ \(self.instanceNumber).")
							self.free()
						} else {
							Bindings.print("Not freeing Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    public func clone() -> Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ {
    	
        return Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ>) in
CResult_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_C2Tuple_PaymentHashPaymentIdZPaymentSendFailureZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}