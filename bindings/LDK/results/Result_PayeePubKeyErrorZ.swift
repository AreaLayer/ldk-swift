public class Result_PayeePubKeyErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_PayeePubKeyErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_PayeePubKeyErrorZ(contents: LDKCResult_PayeePubKeyErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_PayeePubKeyErrorZ){
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> LDKSecp256k1Error? {
				if self.cOpaqueStruct?.result_ok == false {
					return self.cOpaqueStruct!.contents.err.pointee
				}
				return nil
			}
			
			public func getValue() -> PayeePubKey? {
				if self.cOpaqueStruct?.result_ok == true {
					return PayeePubKey(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: PayeePubKey) -> Result_PayeePubKeyErrorZ {
    	
        return Result_PayeePubKeyErrorZ(pointer: CResult_PayeePubKeyErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: LDKSecp256k1Error) -> Result_PayeePubKeyErrorZ {
    	
        return Result_PayeePubKeyErrorZ(pointer: CResult_PayeePubKeyErrorZ_err(e));
    }

    public func free() -> Void {
    	
        return CResult_PayeePubKeyErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_PayeePubKeyErrorZ {
    	
        return Result_PayeePubKeyErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_PayeePubKeyErrorZ>) in
CResult_PayeePubKeyErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
