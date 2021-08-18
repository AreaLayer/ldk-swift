import LDKHeaders

public class Result_UpdateAddHTLCDecodeErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_UpdateAddHTLCDecodeErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_UpdateAddHTLCDecodeErrorZ(contents: LDKCResult_UpdateAddHTLCDecodeErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_UpdateAddHTLCDecodeErrorZ){
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
			
			public func getValue() -> UpdateAddHTLC? {
				if self.cOpaqueStruct?.result_ok == true {
					return UpdateAddHTLC(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: UpdateAddHTLC) -> Result_UpdateAddHTLCDecodeErrorZ {
    	
        return Result_UpdateAddHTLCDecodeErrorZ(pointer: CResult_UpdateAddHTLCDecodeErrorZ_ok(o.danglingClone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_UpdateAddHTLCDecodeErrorZ {
    	
        return Result_UpdateAddHTLCDecodeErrorZ(pointer: CResult_UpdateAddHTLCDecodeErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_UpdateAddHTLCDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_UpdateAddHTLCDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> Result_UpdateAddHTLCDecodeErrorZ {
    	
        return Result_UpdateAddHTLCDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_UpdateAddHTLCDecodeErrorZ>) in
CResult_UpdateAddHTLCDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_UpdateAddHTLCDecodeErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
