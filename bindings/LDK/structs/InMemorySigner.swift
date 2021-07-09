public class InMemorySigner {

    var cOpaqueStruct: LDKInMemorySigner?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(funding_key: [UInt8], revocation_base_key: [UInt8], payment_key: [UInt8], delayed_payment_base_key: [UInt8], htlc_base_key: [UInt8], commitment_seed: [UInt8], channel_value_satoshis: UInt64, channel_keys_id: [UInt8]) {
    	
		let converted_funding_key = Bindings.new_LDKSecretKey(array: funding_key)
		let converted_revocation_base_key = Bindings.new_LDKSecretKey(array: revocation_base_key)
		let converted_payment_key = Bindings.new_LDKSecretKey(array: payment_key)
		let converted_delayed_payment_base_key = Bindings.new_LDKSecretKey(array: delayed_payment_base_key)
		let converted_htlc_base_key = Bindings.new_LDKSecretKey(array: htlc_base_key)
		let converted_commitment_seed = Bindings.new_LDKThirtyTwoBytes(array: commitment_seed)
		let converted_channel_keys_id = Bindings.new_LDKThirtyTwoBytes(array: channel_keys_id)
        self.cOpaqueStruct = InMemorySigner_new(converted_funding_key, converted_revocation_base_key, converted_payment_key, converted_delayed_payment_base_key, converted_htlc_base_key, converted_commitment_seed, channel_value_satoshis, converted_channel_keys_id)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKInMemorySigner){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_funding_key() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_get_funding_key(this_ptrPointer)
}.pointee;
    }

    public func set_funding_key(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKInMemorySigner>) in
InMemorySigner_set_funding_key(this_ptrPointer, Bindings.new_LDKSecretKey(array: val))
};
    }

    public func get_revocation_base_key() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_get_revocation_base_key(this_ptrPointer)
}.pointee;
    }

    public func set_revocation_base_key(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKInMemorySigner>) in
InMemorySigner_set_revocation_base_key(this_ptrPointer, Bindings.new_LDKSecretKey(array: val))
};
    }

    public func get_payment_key() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_get_payment_key(this_ptrPointer)
}.pointee;
    }

    public func set_payment_key(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKInMemorySigner>) in
InMemorySigner_set_payment_key(this_ptrPointer, Bindings.new_LDKSecretKey(array: val))
};
    }

    public func get_delayed_payment_base_key() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_get_delayed_payment_base_key(this_ptrPointer)
}.pointee;
    }

    public func set_delayed_payment_base_key(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKInMemorySigner>) in
InMemorySigner_set_delayed_payment_base_key(this_ptrPointer, Bindings.new_LDKSecretKey(array: val))
};
    }

    public func get_htlc_base_key() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_get_htlc_base_key(this_ptrPointer)
}.pointee;
    }

    public func set_htlc_base_key(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKInMemorySigner>) in
InMemorySigner_set_htlc_base_key(this_ptrPointer, Bindings.new_LDKSecretKey(array: val))
};
    }

    public func get_commitment_seed() -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_get_commitment_seed(this_ptrPointer)
}.pointee;
    }

    public func set_commitment_seed(val: [UInt8]) -> Void {
    	/* NATIVE_CALL_PREP */
        return withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (this_ptrPointer: UnsafeMutablePointer<LDKInMemorySigner>) in
InMemorySigner_set_commitment_seed(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val))
};
    }

    public func clone(orig: InMemorySigner) -> InMemorySigner {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner(pointer: InMemorySigner_clone(origPointer))
};
    }

    public func counterparty_pubkeys(this_arg: InMemorySigner) -> ChannelPublicKeys {
    	/* NATIVE_CALL_PREP */
        return ChannelPublicKeys(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_counterparty_pubkeys(this_argPointer)
});
    }

    public func counterparty_selected_contest_delay(this_arg: InMemorySigner) -> UInt16 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_counterparty_selected_contest_delay(this_argPointer)
};
    }

    public func holder_selected_contest_delay(this_arg: InMemorySigner) -> UInt16 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_holder_selected_contest_delay(this_argPointer)
};
    }

    public func is_outbound(this_arg: InMemorySigner) -> Bool {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_is_outbound(this_argPointer)
};
    }

    public func funding_outpoint(this_arg: InMemorySigner) -> OutPoint {
    	/* NATIVE_CALL_PREP */
        return OutPoint(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_funding_outpoint(this_argPointer)
});
    }

    public func get_channel_parameters(this_arg: InMemorySigner) -> ChannelTransactionParameters {
    	/* NATIVE_CALL_PREP */
        return ChannelTransactionParameters(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_get_channel_parameters(this_argPointer)
});
    }

    public func sign_counterparty_payment_input(this_arg: InMemorySigner, spend_tx: [UInt8], input_idx: UInt, descriptor: StaticPaymentOutputDescriptor) -> Result_CVec_CVec_u8ZZNoneZ {
    	/* NATIVE_CALL_PREP */
        return Result_CVec_CVec_u8ZZNoneZ(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
withUnsafePointer(to: descriptor.cOpaqueStruct!) { (descriptorPointer: UnsafePointer<LDKStaticPaymentOutputDescriptor>) in
InMemorySigner_sign_counterparty_payment_input(this_argPointer, Bindings.new_LDKTransaction(array: spend_tx), input_idx, descriptorPointer)
}
});
    }

    public func sign_dynamic_p2wsh_input(this_arg: InMemorySigner, spend_tx: [UInt8], input_idx: UInt, descriptor: DelayedPaymentOutputDescriptor) -> Result_CVec_CVec_u8ZZNoneZ {
    	/* NATIVE_CALL_PREP */
        return Result_CVec_CVec_u8ZZNoneZ(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
withUnsafePointer(to: descriptor.cOpaqueStruct!) { (descriptorPointer: UnsafePointer<LDKDelayedPaymentOutputDescriptor>) in
InMemorySigner_sign_dynamic_p2wsh_input(this_argPointer, Bindings.new_LDKTransaction(array: spend_tx), input_idx, descriptorPointer)
}
});
    }

    public func as_BaseSign(this_arg: InMemorySigner) -> BaseSign {
    	/* NATIVE_CALL_PREP */
        return BaseSign(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_as_BaseSign(this_argPointer)
});
    }

    public func as_Sign(this_arg: InMemorySigner) -> Sign {
    	/* NATIVE_CALL_PREP */
        return Sign(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_as_Sign(this_argPointer)
});
    }

    public func write(obj: InMemorySigner) -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: obj.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKInMemorySigner>) in
InMemorySigner_write(objPointer)
});
    }

    public func read(ser: [UInt8]) -> Result_InMemorySignerDecodeErrorZ {
    	/* NATIVE_CALL_PREP */
        return Result_InMemorySignerDecodeErrorZ(pointer: InMemorySigner_read(Bindings.new_LDKu8slice(array: ser)));
    }

				
	deinit {
					
					
		InMemorySigner_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
