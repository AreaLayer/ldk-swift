import LDKHeaders

public class Result_UnsignedChannelUpdateDecodeErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_UnsignedChannelUpdateDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_UnsignedChannelUpdateDecodeErrorZ(contents: LDKCResult_UnsignedChannelUpdateDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_UnsignedChannelUpdateDecodeErrorZ){
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
			
			public func getValue() -> UnsignedChannelUpdate? {
				if self.cOpaqueStruct?.result_ok == true {
					return UnsignedChannelUpdate(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: UnsignedChannelUpdate) -> Result_UnsignedChannelUpdateDecodeErrorZ {
    	
        return Result_UnsignedChannelUpdateDecodeErrorZ(pointer: CResult_UnsignedChannelUpdateDecodeErrorZ_ok(o.danglingClone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_UnsignedChannelUpdateDecodeErrorZ {
    	
        return Result_UnsignedChannelUpdateDecodeErrorZ(pointer: CResult_UnsignedChannelUpdateDecodeErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_UnsignedChannelUpdateDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_UnsignedChannelUpdateDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> Result_UnsignedChannelUpdateDecodeErrorZ {
    	
        return Result_UnsignedChannelUpdateDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_UnsignedChannelUpdateDecodeErrorZ>) in
CResult_UnsignedChannelUpdateDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_UnsignedChannelUpdateDecodeErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
