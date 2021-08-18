public class C2Tuple_u32TxOutZ {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKC2Tuple_u32TxOutZ?;

    public init(pointer: LDKC2Tuple_u32TxOutZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* TUPLE_METHODS_START */

    public func clone() -> C2Tuple_u32TxOutZ {
    	
        return C2Tuple_u32TxOutZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKC2Tuple_u32TxOutZ>) in
C2Tuple_u32TxOutZ_clone(origPointer)
});
    }

    public class func new(a: UInt32, b: LDKTxOut) -> C2Tuple_u32TxOutZ {
    	
        return C2Tuple_u32TxOutZ(pointer: C2Tuple_u32TxOutZ_new(a, b));
    }

				
	deinit {
					
					
					
		C2Tuple_u32TxOutZ_free(self.cOpaqueStruct!)
				
	}
			
    /* TUPLE_METHODS_END */

}
