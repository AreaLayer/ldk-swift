public class ChannelInfo {

    var cOpaqueStruct: LDKChannelInfo?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(features_arg: ChannelFeatures, node_one_arg: [UInt8], one_to_two_arg: DirectionalChannelInfo, node_two_arg: [UInt8], two_to_one_arg: DirectionalChannelInfo, capacity_sats_arg: Option_u64Z, announcement_message_arg: ChannelAnnouncement) {
    	
		let converted_node_one_arg = Bindings.new_LDKPublicKey(array: node_one_arg)
		let converted_node_two_arg = Bindings.new_LDKPublicKey(array: node_two_arg)
        self.cOpaqueStruct = ChannelInfo_new(features_arg.cOpaqueStruct!, converted_node_one_arg, one_to_two_arg.cOpaqueStruct!, converted_node_two_arg, two_to_one_arg.cOpaqueStruct!, capacity_sats_arg.cOpaqueStruct!, announcement_message_arg.cOpaqueStruct!)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKChannelInfo){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_features() -> ChannelFeatures {
    	/* NATIVE_CALL_PREP */
        return ChannelFeatures(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_get_features(this_ptrPointer)
});
    }

    public func set_features(val: ChannelFeatures) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelInfo>) in
ChannelInfo_set_features(this_ptrPointer, val.cOpaqueStruct!)
};
    }

    public func get_node_one() -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_get_node_one(this_ptrPointer)
});
    }

    public func set_node_one(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelInfo>) in
ChannelInfo_set_node_one(this_ptrPointer, Bindings.new_LDKPublicKey(array: val))
};
    }

    public func get_one_to_two() -> DirectionalChannelInfo {
    	/* NATIVE_CALL_PREP */
        return DirectionalChannelInfo(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_get_one_to_two(this_ptrPointer)
});
    }

    public func set_one_to_two(val: DirectionalChannelInfo) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelInfo>) in
ChannelInfo_set_one_to_two(this_ptrPointer, val.cOpaqueStruct!)
};
    }

    public func get_node_two() -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_get_node_two(this_ptrPointer)
});
    }

    public func set_node_two(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelInfo>) in
ChannelInfo_set_node_two(this_ptrPointer, Bindings.new_LDKPublicKey(array: val))
};
    }

    public func get_two_to_one() -> DirectionalChannelInfo {
    	/* NATIVE_CALL_PREP */
        return DirectionalChannelInfo(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_get_two_to_one(this_ptrPointer)
});
    }

    public func set_two_to_one(val: DirectionalChannelInfo) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelInfo>) in
ChannelInfo_set_two_to_one(this_ptrPointer, val.cOpaqueStruct!)
};
    }

    public func get_capacity_sats() -> Option_u64Z {
    	/* NATIVE_CALL_PREP */
        return Option_u64Z(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_get_capacity_sats(this_ptrPointer)
});
    }

    public func set_capacity_sats(val: Option_u64Z) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelInfo>) in
ChannelInfo_set_capacity_sats(this_ptrPointer, val.cOpaqueStruct!)
};
    }

    public func get_announcement_message() -> ChannelAnnouncement {
    	/* NATIVE_CALL_PREP */
        return ChannelAnnouncement(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_get_announcement_message(this_ptrPointer)
});
    }

    public func set_announcement_message(val: ChannelAnnouncement) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKChannelInfo>) in
ChannelInfo_set_announcement_message(this_ptrPointer, val.cOpaqueStruct!)
};
    }

    public func clone(orig: ChannelInfo) -> ChannelInfo {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo(pointer: ChannelInfo_clone(origPointer))
};
    }

    public func write(obj: ChannelInfo) -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: obj.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKChannelInfo>) in
ChannelInfo_write(objPointer)
});
    }

    public func read(ser: [UInt8]) -> Result_ChannelInfoDecodeErrorZ {
    	/* NATIVE_CALL_PREP */
        return Result_ChannelInfoDecodeErrorZ(pointer: ChannelInfo_read(Bindings.new_LDKu8slice(array: ser)));
    }

				
	deinit {
					
					
		ChannelInfo_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
