import LDKHeaders

public class Result_RevokeAndACKDecodeErrorZ: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    public internal(set) var cOpaqueStruct: LDKCResult_RevokeAndACKDecodeErrorZ?

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_RevokeAndACKDecodeErrorZ(contents: LDKCResult_RevokeAndACKDecodeErrorZPtr(), result_ok: true)
        			super.init(conflictAvoidingVariableName: 0)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_RevokeAndACKDecodeErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
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
			
			public func getValue() -> RevokeAndACK? {
				if self.cOpaqueStruct?.result_ok == true {
					return RevokeAndACK(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: RevokeAndACK) -> Result_RevokeAndACKDecodeErrorZ {
    	
        return Result_RevokeAndACKDecodeErrorZ(pointer: CResult_RevokeAndACKDecodeErrorZ_ok(o.danglingClone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_RevokeAndACKDecodeErrorZ {
    	
        return Result_RevokeAndACKDecodeErrorZ(pointer: CResult_RevokeAndACKDecodeErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_RevokeAndACKDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_RevokeAndACKDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing Result_RevokeAndACKDecodeErrorZ \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing Result_RevokeAndACKDecodeErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    public func clone() -> Result_RevokeAndACKDecodeErrorZ {
    	
        return Result_RevokeAndACKDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_RevokeAndACKDecodeErrorZ>) in
CResult_RevokeAndACKDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_RevokeAndACKDecodeErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
