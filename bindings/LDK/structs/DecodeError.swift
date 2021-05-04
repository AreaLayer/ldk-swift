class DecodeError {

    var cOpaqueStruct: LDKDecodeError?;

	

    init(pointer: LDKDecodeError){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    func clone(orig: DecodeError) -> DecodeError {
    	
						
		let origPointer = withUnsafePointer(to: orig.cOpaqueStruct!) { (pointer: UnsafePointer<LDKDecodeError>) in
							
			pointer
						
		}
					
        return DecodeError(pointer: DecodeError_clone(origPointer));
    }

				
	deinit {
					
					
		DecodeError_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
