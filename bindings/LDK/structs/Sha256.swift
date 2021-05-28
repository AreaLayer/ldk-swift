public class Sha256 {

    public internal(set) var cOpaqueStruct: LDKSha256?;

	

    public init(pointer: LDKSha256){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func clone(orig: Sha256) -> Sha256 {
    	
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKSha256>) in
Sha256(pointer: Sha256_clone(origPointer))
};
    }

				
	deinit {
					if self.cOpaqueStruct?.is_owned == false {

					
					
		Sha256_free(self.cOpaqueStruct!)
					
}
				
	}
			
    /* STRUCT_METHODS_END */

}
