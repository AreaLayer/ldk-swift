public class Result_ChannelReestablishDecodeErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_ChannelReestablishDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_ChannelReestablishDecodeErrorZ(contents: LDKCResult_ChannelReestablishDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_ChannelReestablishDecodeErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
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
			
			public func getValue() -> ChannelReestablish? {
				if self.cOpaqueStruct?.result_ok == true {
					return ChannelReestablish(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: ChannelReestablish) -> Result_ChannelReestablishDecodeErrorZ {
    	
        return Result_ChannelReestablishDecodeErrorZ(pointer: CResult_ChannelReestablishDecodeErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_ChannelReestablishDecodeErrorZ {
    	
        return Result_ChannelReestablishDecodeErrorZ(pointer: CResult_ChannelReestablishDecodeErrorZ_err(e.clone().cOpaqueStruct!));
    }

    public func free() -> Void {
    	
        return CResult_ChannelReestablishDecodeErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_ChannelReestablishDecodeErrorZ {
    	
        return Result_ChannelReestablishDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_ChannelReestablishDecodeErrorZ>) in
CResult_ChannelReestablishDecodeErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
