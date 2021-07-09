public class UpdateFee {

    var cOpaqueStruct: LDKUpdateFee?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(channel_id_arg: [UInt8], feerate_per_kw_arg: UInt32) {
    	
		let converted_channel_id_arg = Bindings.new_LDKThirtyTwoBytes(array: channel_id_arg)
        self.cOpaqueStruct = UpdateFee_new(converted_channel_id_arg, feerate_per_kw_arg)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKUpdateFee){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_channel_id() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKUpdateFee>) in
UpdateFee_get_channel_id(this_ptrPointer)
}.pointee;
    }

    public func set_channel_id(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKUpdateFee>) in
UpdateFee_set_channel_id(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val))
};
    }

    public func get_feerate_per_kw() -> UInt32 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKUpdateFee>) in
UpdateFee_get_feerate_per_kw(this_ptrPointer)
};
    }

    public func set_feerate_per_kw(val: UInt32) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKUpdateFee>) in
UpdateFee_set_feerate_per_kw(this_ptrPointer, val)
};
    }

    public func clone(orig: UpdateFee) -> UpdateFee {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKUpdateFee>) in
UpdateFee(pointer: UpdateFee_clone(origPointer))
};
    }

    public func write(obj: UpdateFee) -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: obj.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKUpdateFee>) in
UpdateFee_write(objPointer)
});
    }

    public func read(ser: [UInt8]) -> Result_UpdateFeeDecodeErrorZ {
    	/* NATIVE_CALL_PREP */
        return Result_UpdateFeeDecodeErrorZ(pointer: UpdateFee_read(Bindings.new_LDKu8slice(array: ser)));
    }

				
	deinit {
					
					
		UpdateFee_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
