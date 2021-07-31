public class Result_DescriptionCreationErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_DescriptionCreationErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_DescriptionCreationErrorZ(contents: LDKCResult_DescriptionCreationErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_DescriptionCreationErrorZ){
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> LDKCreationError? {
				if self.cOpaqueStruct?.result_ok == false {
					return self.cOpaqueStruct!.contents.err.pointee
				}
				return nil
			}
			
			public func getValue() -> Description? {
				if self.cOpaqueStruct?.result_ok == true {
					return Description(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: Description) -> Result_DescriptionCreationErrorZ {
    	
        return Result_DescriptionCreationErrorZ(pointer: CResult_DescriptionCreationErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: LDKCreationError) -> Result_DescriptionCreationErrorZ {
    	
        return Result_DescriptionCreationErrorZ(pointer: CResult_DescriptionCreationErrorZ_err(e));
    }

    public func free() -> Void {
    	
        return CResult_DescriptionCreationErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_DescriptionCreationErrorZ {
    	
        return Result_DescriptionCreationErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_DescriptionCreationErrorZ>) in
CResult_DescriptionCreationErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
