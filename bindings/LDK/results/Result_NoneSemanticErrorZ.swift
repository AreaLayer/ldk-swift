import LDKHeaders

public class Result_NoneSemanticErrorZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_NoneSemanticErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_NoneSemanticErrorZ(contents: LDKCResult_NoneSemanticErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_NoneSemanticErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> LDKSemanticError? {
				if self.cOpaqueStruct?.result_ok == false {
					return self.cOpaqueStruct!.contents.err.pointee
				}
				return nil
			}
			
    public class func ok() -> Result_NoneSemanticErrorZ {
    	
        return Result_NoneSemanticErrorZ(pointer: CResult_NoneSemanticErrorZ_ok());
    }

    public class func err(e: LDKSemanticError) -> Result_NoneSemanticErrorZ {
    	
        return Result_NoneSemanticErrorZ(pointer: CResult_NoneSemanticErrorZ_err(e));
    }

    internal func free() -> Void {
    	
        return CResult_NoneSemanticErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_NoneSemanticErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing Result_NoneSemanticErrorZ \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing Result_NoneSemanticErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    public func clone() -> Result_NoneSemanticErrorZ {
    	
        return Result_NoneSemanticErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_NoneSemanticErrorZ>) in
CResult_NoneSemanticErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_NoneSemanticErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
