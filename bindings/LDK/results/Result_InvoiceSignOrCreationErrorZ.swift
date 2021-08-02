public class Result_InvoiceSignOrCreationErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_InvoiceSignOrCreationErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_InvoiceSignOrCreationErrorZ(contents: LDKCResult_InvoiceSignOrCreationErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_InvoiceSignOrCreationErrorZ){
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> SignOrCreationError? {
				if self.cOpaqueStruct?.result_ok == false {
					return SignOrCreationError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> Invoice? {
				if self.cOpaqueStruct?.result_ok == true {
					return Invoice(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: Invoice) -> Result_InvoiceSignOrCreationErrorZ {
    	
        return Result_InvoiceSignOrCreationErrorZ(pointer: CResult_InvoiceSignOrCreationErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: SignOrCreationError) -> Result_InvoiceSignOrCreationErrorZ {
    	
        return Result_InvoiceSignOrCreationErrorZ(pointer: CResult_InvoiceSignOrCreationErrorZ_err(e.clone().cOpaqueStruct!));
    }

    public func free() -> Void {
    	
        return CResult_InvoiceSignOrCreationErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_InvoiceSignOrCreationErrorZ {
    	
        return Result_InvoiceSignOrCreationErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_InvoiceSignOrCreationErrorZ>) in
CResult_InvoiceSignOrCreationErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
