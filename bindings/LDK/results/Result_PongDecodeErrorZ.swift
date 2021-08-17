import LDKHeaders

public class Result_PongDecodeErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_PongDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_PongDecodeErrorZ(contents: LDKCResult_PongDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_PongDecodeErrorZ){
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
			
			public func getValue() -> Pong? {
				if self.cOpaqueStruct?.result_ok == true {
					return Pong(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: Pong) -> Result_PongDecodeErrorZ {
    	
        return Result_PongDecodeErrorZ(pointer: CResult_PongDecodeErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_PongDecodeErrorZ {
    	
        return Result_PongDecodeErrorZ(pointer: CResult_PongDecodeErrorZ_err(e.clone().cOpaqueStruct!));
    }

    public func free() -> Void {
    	
        return CResult_PongDecodeErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_PongDecodeErrorZ {
    	
        return Result_PongDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_PongDecodeErrorZ>) in
CResult_PongDecodeErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
