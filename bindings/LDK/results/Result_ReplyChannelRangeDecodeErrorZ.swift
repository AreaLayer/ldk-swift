public class Result_ReplyChannelRangeDecodeErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_ReplyChannelRangeDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_ReplyChannelRangeDecodeErrorZ(contents: LDKCResult_ReplyChannelRangeDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_ReplyChannelRangeDecodeErrorZ){
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
			
			public func getValue() -> ReplyChannelRange? {
				if self.cOpaqueStruct?.result_ok == true {
					return ReplyChannelRange(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: ReplyChannelRange) -> Result_ReplyChannelRangeDecodeErrorZ {
    	
        return Result_ReplyChannelRangeDecodeErrorZ(pointer: CResult_ReplyChannelRangeDecodeErrorZ_ok(o.clone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_ReplyChannelRangeDecodeErrorZ {
    	
        return Result_ReplyChannelRangeDecodeErrorZ(pointer: CResult_ReplyChannelRangeDecodeErrorZ_err(e.clone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_ReplyChannelRangeDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_ReplyChannelRangeDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> Result_ReplyChannelRangeDecodeErrorZ {
    	
        return Result_ReplyChannelRangeDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_ReplyChannelRangeDecodeErrorZ>) in
CResult_ReplyChannelRangeDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_ReplyChannelRangeDecodeErrorZ {
        				var dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
