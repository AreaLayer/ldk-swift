public class CommitmentSigned {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKCommitmentSigned?;


	/* DEFAULT_CONSTRUCTOR_START */
    public init(channel_id_arg: [UInt8], signature_arg: [UInt8], htlc_signatures_arg: [[UInt8]]) {
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
    	
        self.cOpaqueStruct = CommitmentSigned_new(Bindings.new_LDKThirtyTwoBytes(array: channel_id_arg), Bindings.new_LDKSignature(array: signature_arg), Bindings.new_LDKCVec_SignatureZ(array: htlc_signatures_arg))
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCommitmentSigned){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_channel_id() -> [UInt8] {
    	
        return Bindings.tuple32_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKCommitmentSigned>) in
CommitmentSigned_get_channel_id(this_ptrPointer)
}.pointee);
    }

    public func set_channel_id(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKCommitmentSigned>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return CommitmentSigned_set_channel_id(this_ptrPointer, Bindings.new_LDKThirtyTwoBytes(array: val));
    }

    public func get_signature() -> [UInt8] {
    	
        return Bindings.LDKSignature_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKCommitmentSigned>) in
CommitmentSigned_get_signature(this_ptrPointer)
});
    }

    public func set_signature(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKCommitmentSigned>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return CommitmentSigned_set_signature(this_ptrPointer, Bindings.new_LDKSignature(array: val));
    }

    public func set_htlc_signatures(val: [[UInt8]]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKCommitmentSigned>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return CommitmentSigned_set_htlc_signatures(this_ptrPointer, Bindings.new_LDKCVec_SignatureZ(array: val));
    }

    public func clone() -> CommitmentSigned {
    	
        return CommitmentSigned(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCommitmentSigned>) in
CommitmentSigned_clone(origPointer)
});
    }

    public func write() -> [UInt8] {
    	
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKCommitmentSigned>) in
CommitmentSigned_write(objPointer)
});
    }

    public class func read(ser: [UInt8]) -> Result_CommitmentSignedDecodeErrorZ {
    	
        return Result_CommitmentSignedDecodeErrorZ(pointer: CommitmentSigned_read(Bindings.new_LDKu8slice(array: ser)));
    }

				
	deinit {
					
					
					
		CommitmentSigned_free(self.cOpaqueStruct!)
					
				
	}
			
    /* STRUCT_METHODS_END */

}
