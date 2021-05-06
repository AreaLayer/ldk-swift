public class UpdateFulfillHTLC {

    var cOpaqueStruct: LDKUpdateFulfillHTLC?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(channel_id_arg: [UInt8], htlc_id_arg: UInt64, payment_preimage_arg: [UInt8]) {
    	
		let converted_channel_id_arg = Bindings.new_LDKThirtyTwoBytes(array: channel_id_arg)
		let converted_payment_preimage_arg = Bindings.new_LDKThirtyTwoBytes(array: payment_preimage_arg)
        self.cOpaqueStruct = UpdateFulfillHTLC_new(converted_channel_id_arg, htlc_id_arg, converted_payment_preimage_arg)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKUpdateFulfillHTLC){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_channel_id() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return UpdateFulfillHTLC_get_channel_id(this_ptrPointer).pointee;
    }

    public func set_channel_id(val: [UInt8]) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return UpdateFulfillHTLC_set_channel_id(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val));
    }

    public func get_htlc_id() -> UInt64 {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return UpdateFulfillHTLC_get_htlc_id(this_ptrPointer);
    }

    public func set_htlc_id(val: UInt64) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return UpdateFulfillHTLC_set_htlc_id(this_ptrPointer, val);
    }

    public func get_payment_preimage() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return UpdateFulfillHTLC_get_payment_preimage(this_ptrPointer).pointee;
    }

    public func set_payment_preimage(val: [UInt8]) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return UpdateFulfillHTLC_set_payment_preimage(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val));
    }

    public func clone(orig: UpdateFulfillHTLC) -> UpdateFulfillHTLC {
    	
						
		let origPointer = withUnsafePointer(to: orig.cOpaqueStruct!) { (pointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return UpdateFulfillHTLC(pointer: UpdateFulfillHTLC_clone(origPointer));
    }

    public func write(obj: UpdateFulfillHTLC) -> [UInt8] {
    	
						
		let objPointer = withUnsafePointer(to: obj.cOpaqueStruct!) { (pointer: UnsafePointer<LDKUpdateFulfillHTLC>) in
							
			pointer
						
		}
					
        return Bindings.LDKCVec_u8Z_to_array(nativeType: UpdateFulfillHTLC_write(objPointer));
    }

    public func read(ser: [UInt8]) -> Result_UpdateFulfillHTLCDecodeErrorZ {
    	
        return Result_UpdateFulfillHTLCDecodeErrorZ(pointer: UpdateFulfillHTLC_read(Bindings.new_LDKu8slice(array: ser)));
    }

				
	deinit {
					
					
		UpdateFulfillHTLC_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
