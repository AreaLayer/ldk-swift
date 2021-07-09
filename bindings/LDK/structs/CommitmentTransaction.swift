public class CommitmentTransaction {

    var cOpaqueStruct: LDKCommitmentTransaction?;

	

    public init(pointer: LDKCommitmentTransaction){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func clone(orig: CommitmentTransaction) -> CommitmentTransaction {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCommitmentTransaction>) in
CommitmentTransaction(pointer: CommitmentTransaction_clone(origPointer))
};
    }

    public func write(obj: CommitmentTransaction) -> [UInt8] {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: obj.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKCommitmentTransaction>) in
CommitmentTransaction_write(objPointer)
});
    }

    public func read(ser: [UInt8]) -> Result_CommitmentTransactionDecodeErrorZ {
    	/* NATIVE_CALL_PREP */
        return Result_CommitmentTransactionDecodeErrorZ(pointer: CommitmentTransaction_read(Bindings.new_LDKu8slice(array: ser)));
    }

    public func commitment_number(this_arg: CommitmentTransaction) -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKCommitmentTransaction>) in
CommitmentTransaction_commitment_number(this_argPointer)
};
    }

    public func to_broadcaster_value_sat(this_arg: CommitmentTransaction) -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKCommitmentTransaction>) in
CommitmentTransaction_to_broadcaster_value_sat(this_argPointer)
};
    }

    public func to_countersignatory_value_sat(this_arg: CommitmentTransaction) -> UInt64 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKCommitmentTransaction>) in
CommitmentTransaction_to_countersignatory_value_sat(this_argPointer)
};
    }

    public func feerate_per_kw(this_arg: CommitmentTransaction) -> UInt32 {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKCommitmentTransaction>) in
CommitmentTransaction_feerate_per_kw(this_argPointer)
};
    }

    public func trust(this_arg: CommitmentTransaction) -> TrustedCommitmentTransaction {
    	/* NATIVE_CALL_PREP */
        return TrustedCommitmentTransaction(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKCommitmentTransaction>) in
CommitmentTransaction_trust(this_argPointer)
});
    }

    public func verify(this_arg: CommitmentTransaction, channel_parameters: DirectedChannelTransactionParameters, broadcaster_keys: ChannelPublicKeys, countersignatory_keys: ChannelPublicKeys) -> Result_TrustedCommitmentTransactionNoneZ {
    	/* NATIVE_CALL_PREP */
        return Result_TrustedCommitmentTransactionNoneZ(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKCommitmentTransaction>) in
withUnsafePointer(to: channel_parameters.cOpaqueStruct!) { (channel_parametersPointer: UnsafePointer<LDKDirectedChannelTransactionParameters>) in
withUnsafePointer(to: broadcaster_keys.cOpaqueStruct!) { (broadcaster_keysPointer: UnsafePointer<LDKChannelPublicKeys>) in
withUnsafePointer(to: countersignatory_keys.cOpaqueStruct!) { (countersignatory_keysPointer: UnsafePointer<LDKChannelPublicKeys>) in
CommitmentTransaction_verify(this_argPointer, channel_parametersPointer, broadcaster_keysPointer, countersignatory_keysPointer)
}
}
}
});
    }

				
	deinit {
					
					
		CommitmentTransaction_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
