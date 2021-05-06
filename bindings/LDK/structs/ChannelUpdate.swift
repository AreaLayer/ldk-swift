public class ChannelUpdate {

    var cOpaqueStruct: LDKChannelUpdate?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(signature_arg: [UInt8], contents_arg: UnsignedChannelUpdate) {
    	
		let converted_signature_arg = Bindings.new_LDKSignature(array: signature_arg)
        self.cOpaqueStruct = ChannelUpdate_new(converted_signature_arg, contents_arg.cOpaqueStruct!)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKChannelUpdate){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_signature() -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKSignature_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelUpdate>) in
ChannelUpdate_get_signature(this_ptrPointer)
});
    }

    public func set_signature(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelUpdate>) in
ChannelUpdate_set_signature(this_ptrPointer, Bindings.new_LDKSignature(array: val))
};
    }

    public func get_contents() -> UnsignedChannelUpdate {
    	/* NATIVE_CALL_PREP */
        return UnsignedChannelUpdate(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelUpdate>) in
ChannelUpdate_get_contents(this_ptrPointer)
});
    }

    public func set_contents(val: UnsignedChannelUpdate) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelUpdate>) in
ChannelUpdate_set_contents(this_ptrPointer, val.cOpaqueStruct!)
};
    }

    public func clone(orig: ChannelUpdate) -> ChannelUpdate {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKChannelUpdate>) in
ChannelUpdate(pointer: ChannelUpdate_clone(origPointer))
};
    }

    public func write(obj: ChannelUpdate) -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: obj.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKChannelUpdate>) in
ChannelUpdate_write(objPointer)
});
    }

    public func read(ser: [UInt8]) -> Result_ChannelUpdateDecodeErrorZ {
    	/* NATIVE_CALL_PREP */
        return Result_ChannelUpdateDecodeErrorZ(pointer: ChannelUpdate_read(Bindings.new_LDKu8slice(array: ser)));
    }

				
	deinit {
					
					
		ChannelUpdate_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
