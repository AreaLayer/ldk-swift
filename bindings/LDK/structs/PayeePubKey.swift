public class PayeePubKey {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKPayeePubKey?;


	

    public init(pointer: LDKPayeePubKey){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public class func eq(a: PayeePubKey, b: PayeePubKey) -> Bool {
    	
        return withUnsafePointer(to: a.cOpaqueStruct!) { (aPointer: UnsafePointer<LDKPayeePubKey>) in
withUnsafePointer(to: b.cOpaqueStruct!) { (bPointer: UnsafePointer<LDKPayeePubKey>) in
PayeePubKey_eq(aPointer, bPointer)
}
};
    }

    public func clone() -> PayeePubKey {
    	
        return PayeePubKey(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKPayeePubKey>) in
PayeePubKey_clone(origPointer)
});
    }

				
	deinit {
					
					
					
		PayeePubKey_free(self.cOpaqueStruct!)
					
				
	}
			
    /* STRUCT_METHODS_END */

}
