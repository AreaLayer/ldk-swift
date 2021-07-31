public class Result_CVec_u8ZPeerHandleErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_CVec_u8ZPeerHandleErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_CVec_u8ZPeerHandleErrorZ(contents: LDKCResult_CVec_u8ZPeerHandleErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_CVec_u8ZPeerHandleErrorZ){
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> PeerHandleError? {
				if self.cOpaqueStruct?.result_ok == false {
					return PeerHandleError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> [UInt8]? {
				if self.cOpaqueStruct?.result_ok == true {
					return Bindings.LDKCVec_u8Z_to_array(nativeType: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: [UInt8]) -> Result_CVec_u8ZPeerHandleErrorZ {
    	
        return Result_CVec_u8ZPeerHandleErrorZ(pointer: CResult_CVec_u8ZPeerHandleErrorZ_ok(Bindings.new_LDKCVec_u8Z(array: o)));
    }

    public class func err(e: PeerHandleError) -> Result_CVec_u8ZPeerHandleErrorZ {
    	
        return Result_CVec_u8ZPeerHandleErrorZ(pointer: CResult_CVec_u8ZPeerHandleErrorZ_err(e.clone().cOpaqueStruct!));
    }

    public func free() -> Void {
    	
        return CResult_CVec_u8ZPeerHandleErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_CVec_u8ZPeerHandleErrorZ {
    	
        return Result_CVec_u8ZPeerHandleErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_CVec_u8ZPeerHandleErrorZ>) in
CResult_CVec_u8ZPeerHandleErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
