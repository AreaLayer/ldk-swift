import LDKHeaders

public class Option_C2Tuple_usizeTransactionZZ {

    public internal(set) var cOpaqueStruct: LDKCOption_C2Tuple_usizeTransactionZZ?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(value: C2Tuple_usizeTransactionZ?) {
    	
				self.cOpaqueStruct = LDKCOption_C2Tuple_usizeTransactionZZ()
				if let value = value {
					self.cOpaqueStruct!.tag = LDKCOption_C2Tuple_usizeTransactionZZ_Some
					self.cOpaqueStruct!.some = value.cOpaqueStruct!
				} else {
					self.cOpaqueStruct!.tag = LDKCOption_C2Tuple_usizeTransactionZZ_None
				}
			
        
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCOption_C2Tuple_usizeTransactionZZ){
		self.cOpaqueStruct = pointer
	}

    /* OPTION_METHODS_START */

    public func getValue() -> C2Tuple_usizeTransactionZ? {
    	
			
				if self.cOpaqueStruct!.tag == LDKCOption_C2Tuple_usizeTransactionZZ_None {
						return nil
				}
				if self.cOpaqueStruct!.tag == LDKCOption_C2Tuple_usizeTransactionZZ_Some {
					return C2Tuple_usizeTransactionZ(pointer: self.cOpaqueStruct!.some)
				}
				assert(false, "invalid option enum value")
				return nil
			
        
    }

    public class func some(o: C2Tuple_usizeTransactionZ) -> Option_C2Tuple_usizeTransactionZZ {
    	
        return Option_C2Tuple_usizeTransactionZZ(pointer: COption_C2Tuple_usizeTransactionZZ_some(o.clone().cOpaqueStruct!));
    }

    public class func none() -> Option_C2Tuple_usizeTransactionZZ {
    	
        return Option_C2Tuple_usizeTransactionZZ(pointer: COption_C2Tuple_usizeTransactionZZ_none());
    }

    public func free() -> Void {
    	
        return COption_C2Tuple_usizeTransactionZZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Option_C2Tuple_usizeTransactionZZ {
    	
        return Option_C2Tuple_usizeTransactionZZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCOption_C2Tuple_usizeTransactionZZ>) in
COption_C2Tuple_usizeTransactionZZ_clone(origPointer)
});
    }

    /* OPTION_METHODS_END */

	/* TYPE_CLASSES */
}
