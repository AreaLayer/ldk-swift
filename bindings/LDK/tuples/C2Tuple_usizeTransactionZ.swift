public class C2Tuple_usizeTransactionZ {

    var cOpaqueStruct: LDKC2Tuple_usizeTransactionZ?;

    init(pointer: LDKC2Tuple_usizeTransactionZ){
		self.cOpaqueStruct = pointer
	}

    /* TUPLE_METHODS_START */

    public func new(a: UInt, b: [UInt8]) -> C2Tuple_usizeTransactionZ {
    	
        return C2Tuple_usizeTransactionZ(pointer: C2Tuple_usizeTransactionZ_new(a, Bindings.new_LDKTransaction(array: b)));
    }

				
	deinit {
					
					
		C2Tuple_usizeTransactionZ_free(self.cOpaqueStruct!)
				
	}
			
    /* TUPLE_METHODS_END */

}
