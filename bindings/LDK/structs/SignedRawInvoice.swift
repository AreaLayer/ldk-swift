public class SignedRawInvoice {

    var cOpaqueStruct: LDKSignedRawInvoice?;

	

    public init(pointer: LDKSignedRawInvoice){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func clone(orig: SignedRawInvoice) -> SignedRawInvoice {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKSignedRawInvoice>) in
SignedRawInvoice(pointer: SignedRawInvoice_clone(origPointer))
};
    }

    public func into_parts(this_arg: SignedRawInvoice) -> C3Tuple_RawInvoice_u832InvoiceSignatureZ {
    	/* NATIVE_CALL_PREP */
        return C3Tuple_RawInvoice_u832InvoiceSignatureZ(pointer: SignedRawInvoice_into_parts(this_arg.cOpaqueStruct!));
    }

    public func raw_invoice(this_arg: SignedRawInvoice) -> RawInvoice {
    	/* NATIVE_CALL_PREP */
        return RawInvoice(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKSignedRawInvoice>) in
SignedRawInvoice_raw_invoice(this_argPointer)
});
    }

    public func hash(this_arg: SignedRawInvoice) -> (UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8) {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKSignedRawInvoice>) in
SignedRawInvoice_hash(this_argPointer)
}.pointee;
    }

    public func signature(this_arg: SignedRawInvoice) -> InvoiceSignature {
    	/* NATIVE_CALL_PREP */
        return InvoiceSignature(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKSignedRawInvoice>) in
SignedRawInvoice_signature(this_argPointer)
});
    }

    public func recover_payee_pub_key(this_arg: SignedRawInvoice) -> Result_PayeePubKeyErrorZ {
    	/* NATIVE_CALL_PREP */
        return Result_PayeePubKeyErrorZ(pointer: withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKSignedRawInvoice>) in
SignedRawInvoice_recover_payee_pub_key(this_argPointer)
});
    }

    public func check_signature(this_arg: SignedRawInvoice) -> Bool {
    	/* NATIVE_CALL_PREP */
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKSignedRawInvoice>) in
SignedRawInvoice_check_signature(this_argPointer)
};
    }

    public func from_str(s: String) -> Result_SignedRawInvoiceNoneZ {
    	/* NATIVE_CALL_PREP */
        return Result_SignedRawInvoiceNoneZ(pointer: SignedRawInvoice_from_str(Bindings.new_LDKStr(string: s)));
    }

    public func to_str(o: SignedRawInvoice) -> String {
    	/* NATIVE_CALL_PREP */
        return Bindings.LDKStr_to_string(nativeType: withUnsafePointer(to: o.cOpaqueStruct!) { (oPointer: UnsafePointer<LDKSignedRawInvoice>) in
SignedRawInvoice_to_str(oPointer)
});
    }

				
	deinit {
					
					
		SignedRawInvoice_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
