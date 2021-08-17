import LDKHeaders

public class FundingSigned {

    public internal(set) var cOpaqueStruct: LDKFundingSigned?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(channel_id_arg: [UInt8], signature_arg: [UInt8]) {
    	
        self.cOpaqueStruct = FundingSigned_new(Bindings.new_LDKThirtyTwoBytes(array: channel_id_arg), Bindings.new_LDKSignature(array: signature_arg))
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKFundingSigned){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_channel_id() -> [UInt8] {
    	
        return Bindings.tuple32_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKFundingSigned>) in
FundingSigned_get_channel_id(this_ptrPointer)
}.pointee);
    }

    public func set_channel_id(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKFundingSigned>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return FundingSigned_set_channel_id(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val));
    }

    public func get_signature() -> [UInt8] {
    	
        return Bindings.LDKSignature_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKFundingSigned>) in
FundingSigned_get_signature(this_ptrPointer)
});
    }

    public func set_signature(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKFundingSigned>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return FundingSigned_set_signature(this_ptrPointer, Bindings.new_LDKSignature(array: val));
    }

    public func clone() -> FundingSigned {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKFundingSigned>) in
FundingSigned(pointer: FundingSigned_clone(origPointer))
};
    }

    public func write() -> [UInt8] {
    	
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKFundingSigned>) in
FundingSigned_write(objPointer)
});
    }

    public class func read(ser: [UInt8]) -> Result_FundingSignedDecodeErrorZ {
    	
        return Result_FundingSignedDecodeErrorZ(pointer: FundingSigned_read(Bindings.new_LDKu8slice(array: ser)));
    }

				
	deinit {
					
					
					
		FundingSigned_free(self.cOpaqueStruct!)
					
				
	}
			
    /* STRUCT_METHODS_END */

}
