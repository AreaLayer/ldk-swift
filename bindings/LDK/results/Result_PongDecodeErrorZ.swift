public class Result_PongDecodeErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_PongDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_PongDecodeErrorZ(contents: LDKCResult_PongDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_PongDecodeErrorZ){
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

    internal func free() -> Void {
    	
        return CResult_PongDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_PongDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> Result_PongDecodeErrorZ {
    	
        return Result_PongDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_PongDecodeErrorZ>) in
CResult_PongDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_PongDecodeErrorZ {
        				var dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
