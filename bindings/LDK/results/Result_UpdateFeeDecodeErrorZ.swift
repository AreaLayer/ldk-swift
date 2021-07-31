public class Result_UpdateFeeDecodeErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_UpdateFeeDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_UpdateFeeDecodeErrorZ(contents: LDKCResult_UpdateFeeDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_UpdateFeeDecodeErrorZ){
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> DecodeError? {
				if self.cOpaqueStruct?.result_ok == false {
					return DecodeError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> UpdateFee? {
				if self.cOpaqueStruct?.result_ok == true {
					return UpdateFee(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: UpdateFee) -> Result_UpdateFeeDecodeErrorZ {
    	
        return Result_UpdateFeeDecodeErrorZ(pointer: CResult_UpdateFeeDecodeErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_UpdateFeeDecodeErrorZ {
    	
        return Result_UpdateFeeDecodeErrorZ(pointer: CResult_UpdateFeeDecodeErrorZ_err(e.clone().cOpaqueStruct!));
    }

    public func free() -> Void {
    	
        return CResult_UpdateFeeDecodeErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_UpdateFeeDecodeErrorZ {
    	
        return Result_UpdateFeeDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_UpdateFeeDecodeErrorZ>) in
CResult_UpdateFeeDecodeErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
