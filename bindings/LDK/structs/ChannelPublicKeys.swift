public class ChannelPublicKeys {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKChannelPublicKeys?;


	/* DEFAULT_CONSTRUCTOR_START */
    public init(funding_pubkey_arg: [UInt8], revocation_basepoint_arg: [UInt8], payment_point_arg: [UInt8], delayed_payment_basepoint_arg: [UInt8], htlc_basepoint_arg: [UInt8]) {
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
    	
        self.cOpaqueStruct = ChannelPublicKeys_new(Bindings.new_LDKPublicKey(array: funding_pubkey_arg), Bindings.new_LDKPublicKey(array: revocation_basepoint_arg), Bindings.new_LDKPublicKey(array: payment_point_arg), Bindings.new_LDKPublicKey(array: delayed_payment_basepoint_arg), Bindings.new_LDKPublicKey(array: htlc_basepoint_arg))
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKChannelPublicKeys){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_funding_pubkey() -> [UInt8] {
    	
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelPublicKeys>) in
ChannelPublicKeys_get_funding_pubkey(this_ptrPointer)
});
    }

    public func set_funding_pubkey(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKChannelPublicKeys>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ChannelPublicKeys_set_funding_pubkey(this_ptrPointer, Bindings.new_LDKPublicKey(array: val));
    }

    public func get_revocation_basepoint() -> [UInt8] {
    	
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelPublicKeys>) in
ChannelPublicKeys_get_revocation_basepoint(this_ptrPointer)
});
    }

    public func set_revocation_basepoint(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKChannelPublicKeys>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ChannelPublicKeys_set_revocation_basepoint(this_ptrPointer, Bindings.new_LDKPublicKey(array: val));
    }

    public func get_payment_point() -> [UInt8] {
    	
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelPublicKeys>) in
ChannelPublicKeys_get_payment_point(this_ptrPointer)
});
    }

    public func set_payment_point(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKChannelPublicKeys>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ChannelPublicKeys_set_payment_point(this_ptrPointer, Bindings.new_LDKPublicKey(array: val));
    }

    public func get_delayed_payment_basepoint() -> [UInt8] {
    	
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelPublicKeys>) in
ChannelPublicKeys_get_delayed_payment_basepoint(this_ptrPointer)
});
    }

    public func set_delayed_payment_basepoint(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKChannelPublicKeys>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ChannelPublicKeys_set_delayed_payment_basepoint(this_ptrPointer, Bindings.new_LDKPublicKey(array: val));
    }

    public func get_htlc_basepoint() -> [UInt8] {
    	
        return Bindings.LDKPublicKey_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (this_ptrPointer: UnsafePointer<LDKChannelPublicKeys>) in
ChannelPublicKeys_get_htlc_basepoint(this_ptrPointer)
});
    }

    public func set_htlc_basepoint(val: [UInt8]) -> Void {
    	
							let this_ptrPointer = UnsafeMutablePointer<LDKChannelPublicKeys>.allocate(capacity: 1)
							this_ptrPointer.initialize(to: self.cOpaqueStruct!)
						
        return ChannelPublicKeys_set_htlc_basepoint(this_ptrPointer, Bindings.new_LDKPublicKey(array: val));
    }

    public func clone() -> ChannelPublicKeys {
    	
        return ChannelPublicKeys(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKChannelPublicKeys>) in
ChannelPublicKeys_clone(origPointer)
});
    }

					internal func danglingClone() -> ChannelPublicKeys {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    public func write() -> [UInt8] {
    	
        return Bindings.LDKCVec_u8Z_to_array(nativeType: withUnsafePointer(to: self.cOpaqueStruct!) { (objPointer: UnsafePointer<LDKChannelPublicKeys>) in
ChannelPublicKeys_write(objPointer)
});
    }

    public class func read(ser: [UInt8]) -> Result_ChannelPublicKeysDecodeErrorZ {
    	
        return Result_ChannelPublicKeysDecodeErrorZ(pointer: ChannelPublicKeys_read(Bindings.new_LDKu8slice(array: ser)));
    }

    internal func free() -> Void {
    	
        return ChannelPublicKeys_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> ChannelPublicKeys {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    /* STRUCT_METHODS_END */

}
