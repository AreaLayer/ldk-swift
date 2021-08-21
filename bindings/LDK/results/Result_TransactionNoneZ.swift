public class Result_TransactionNoneZ: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCResult_TransactionNoneZ?

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_TransactionNoneZ(contents: LDKCResult_TransactionNoneZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_TransactionNoneZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init()
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getValue() -> [UInt8]? {
				if self.cOpaqueStruct?.result_ok == true {
					return Bindings.LDKTransaction_to_array(nativeType: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: [UInt8]) -> Result_TransactionNoneZ {
    	
						let oWrapper = Bindings.new_LDKTransactionWrapper(array: o)
						defer {
							oWrapper.noOpRetain()
						}
					
        return Result_TransactionNoneZ(pointer: CResult_TransactionNoneZ_ok(oWrapper.cOpaqueStruct!));
    }

    public class func err() -> Result_TransactionNoneZ {
    	
        return Result_TransactionNoneZ(pointer: CResult_TransactionNoneZ_err());
    }

    internal func free() -> Void {
    	
        return CResult_TransactionNoneZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_TransactionNoneZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing Result_TransactionNoneZ \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing Result_TransactionNoneZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    public func clone() -> Result_TransactionNoneZ {
    	
        return Result_TransactionNoneZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_TransactionNoneZ>) in
CResult_TransactionNoneZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_TransactionNoneZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
