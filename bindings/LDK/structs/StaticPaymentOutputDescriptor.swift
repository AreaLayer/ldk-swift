public class StaticPaymentOutputDescriptor {

    var cOpaqueStruct: LDKStaticPaymentOutputDescriptor?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(outpoint_arg: OutPoint, output_arg: LDKTxOut, channel_keys_id_arg: [UInt8], channel_value_satoshis_arg: UInt64) {
    	
        self.cOpaqueStruct = StaticPaymentOutputDescriptor_new(outpoint_arg.cOpaqueStruct!, output_arg, Bindings.new_LDKThirtyTwoBytes(array: channel_keys_id_arg), channel_value_satoshis_arg)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKStaticPaymentOutputDescriptor){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_outpoint() -> OutPoint {
    	
        return OutPoint(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKStaticPaymentOutputDescriptor>) in
StaticPaymentOutputDescriptor_get_outpoint(this_ptrPointer)
});
    }

    public func set_outpoint(val: OutPoint) -> Void {
    	
						let this_ptrPointer = UnsafeMutablePointer<LDKStaticPaymentOutputDescriptor>.allocate(capacity: 1)
						this_ptrPointer.initialize(to: self.cOpaqueStruct!)
					
        return StaticPaymentOutputDescriptor_set_outpoint(this_ptrPointer, val.cOpaqueStruct!);
    }

    public func set_output(val: LDKTxOut) -> Void {
    	
						let this_ptrPointer = UnsafeMutablePointer<LDKStaticPaymentOutputDescriptor>.allocate(capacity: 1)
						this_ptrPointer.initialize(to: self.cOpaqueStruct!)
					
        return StaticPaymentOutputDescriptor_set_output(this_ptrPointer, val);
    }

    public func get_channel_keys_id() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKStaticPaymentOutputDescriptor>) in
StaticPaymentOutputDescriptor_get_channel_keys_id(this_ptrPointer)
}.pointee;
    }

    public func set_channel_keys_id(val: [UInt8]) -> Void {
    	
						let this_ptrPointer = UnsafeMutablePointer<LDKStaticPaymentOutputDescriptor>.allocate(capacity: 1)
						this_ptrPointer.initialize(to: self.cOpaqueStruct!)
					
        return StaticPaymentOutputDescriptor_set_channel_keys_id(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val));
    }

    public func get_channel_value_satoshis() -> UInt64 {
    	
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKStaticPaymentOutputDescriptor>) in
StaticPaymentOutputDescriptor_get_channel_value_satoshis(this_ptrPointer)
};
    }

    public func set_channel_value_satoshis(val: UInt64) -> Void {
    	
						let this_ptrPointer = UnsafeMutablePointer<LDKStaticPaymentOutputDescriptor>.allocate(capacity: 1)
						this_ptrPointer.initialize(to: self.cOpaqueStruct!)
					
        return StaticPaymentOutputDescriptor_set_channel_value_satoshis(this_ptrPointer, val);
    }

    public func clone(orig: StaticPaymentOutputDescriptor) -> StaticPaymentOutputDescriptor {
    	
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKStaticPaymentOutputDescriptor>) in
StaticPaymentOutputDescriptor(pointer: StaticPaymentOutputDescriptor_clone(origPointer))
};
    }

				
	deinit {
					
					
		StaticPaymentOutputDescriptor_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
