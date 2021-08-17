import LDKHeaders

public class Result_DirectionalChannelInfoDecodeErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_DirectionalChannelInfoDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_DirectionalChannelInfoDecodeErrorZ(contents: LDKCResult_DirectionalChannelInfoDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_DirectionalChannelInfoDecodeErrorZ){
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
			
			public func getValue() -> DirectionalChannelInfo? {
				if self.cOpaqueStruct?.result_ok == true {
					return DirectionalChannelInfo(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: DirectionalChannelInfo) -> Result_DirectionalChannelInfoDecodeErrorZ {
    	
        return Result_DirectionalChannelInfoDecodeErrorZ(pointer: CResult_DirectionalChannelInfoDecodeErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_DirectionalChannelInfoDecodeErrorZ {
    	
        return Result_DirectionalChannelInfoDecodeErrorZ(pointer: CResult_DirectionalChannelInfoDecodeErrorZ_err(e.clone().cOpaqueStruct!));
    }

    public func free() -> Void {
    	
        return CResult_DirectionalChannelInfoDecodeErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_DirectionalChannelInfoDecodeErrorZ {
    	
        return Result_DirectionalChannelInfoDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_DirectionalChannelInfoDecodeErrorZ>) in
CResult_DirectionalChannelInfoDecodeErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
