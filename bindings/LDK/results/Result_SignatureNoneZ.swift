import LDKHeaders

public class Result_SignatureNoneZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_SignatureNoneZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_SignatureNoneZ(contents: LDKCResult_SignatureNoneZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_SignatureNoneZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getValue() -> [UInt8]? {
				if self.cOpaqueStruct?.result_ok == true {
					return Bindings.LDKSignature_to_array(nativeType: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: [UInt8]) -> Result_SignatureNoneZ {
    	
        return Result_SignatureNoneZ(pointer: CResult_SignatureNoneZ_ok(Bindings.new_LDKSignature(array: o)));
    }

    public class func err() -> Result_SignatureNoneZ {
    	
        return Result_SignatureNoneZ(pointer: CResult_SignatureNoneZ_err());
    }

    internal func free() -> Void {
    	
        return CResult_SignatureNoneZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_SignatureNoneZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> Result_SignatureNoneZ {
    	
        return Result_SignatureNoneZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_SignatureNoneZ>) in
CResult_SignatureNoneZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_SignatureNoneZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
