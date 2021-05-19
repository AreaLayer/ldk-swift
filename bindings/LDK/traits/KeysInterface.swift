open class KeysInterface {

    public var cOpaqueStruct: LDKKeysInterface?;

    public init() {

    	/* NATIVE_CALLBACKS_START */

		func get_node_secretCallback(pointer: UnsafeRawPointer?) -> LDKSecretKey {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return Bindings.new_LDKSecretKey(array: instance.get_node_secret());
		}

		func get_destination_scriptCallback(pointer: UnsafeRawPointer?) -> LDKCVec_u8Z {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return Bindings.new_LDKCVec_u8Z(array: instance.get_destination_script());
		}

		func get_shutdown_pubkeyCallback(pointer: UnsafeRawPointer?) -> LDKPublicKey {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return Bindings.new_LDKPublicKey(array: instance.get_shutdown_pubkey());
		}

		func get_channel_signerCallback(pointer: UnsafeRawPointer?, inbound: Bool, channel_value_satoshis: UInt64) -> LDKSign {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return instance.get_channel_signer(inbound: inbound, channel_value_satoshis: channel_value_satoshis).cOpaqueStruct!;
		}

		func get_secure_random_bytesCallback(pointer: UnsafeRawPointer?) -> LDKThirtyTwoBytes {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return Bindings.new_LDKThirtyTwoBytes(array: instance.get_secure_random_bytes());
		}

		func read_chan_signerCallback(pointer: UnsafeRawPointer?, reader: LDKu8slice) -> LDKCResult_SignDecodeErrorZ {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return instance.read_chan_signer(reader: Bindings.LDKu8slice_to_array(nativeType: reader)).cOpaqueStruct!;
		}

		func sign_invoiceCallback(pointer: UnsafeRawPointer?, invoice_preimage: LDKCVec_u8Z) -> LDKCResult_RecoverableSignatureNoneZ {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return instance.sign_invoice(invoice_preimage: Bindings.LDKCVec_u8Z_to_array(nativeType: invoice_preimage)).cOpaqueStruct!;
		}

		func freeCallback(pointer: UnsafeMutableRawPointer?) -> Void {
			let instance: KeysInterface = Bindings.pointerToInstance(pointer: pointer!)
			
			return instance.free();
		}

		/* NATIVE_CALLBACKS_END */

        self.cOpaqueStruct = LDKKeysInterface(this_arg: Bindings.instanceToPointer(instance: self), 
			get_node_secret: get_node_secretCallback,
			get_destination_script: get_destination_scriptCallback,
			get_shutdown_pubkey: get_shutdown_pubkeyCallback,
			get_channel_signer: get_channel_signerCallback,
			get_secure_random_bytes: get_secure_random_bytesCallback,
			read_chan_signer: read_chan_signerCallback,
			sign_invoice: sign_invoiceCallback,
			free: freeCallback)
    }

    public init(pointer: LDKKeysInterface){
		self.cOpaqueStruct = pointer
	}

    /* SWIFT_CALLBACKS_START */

    open func get_node_secret() -> [UInt8] {
    	/* EDIT ME */
		return [UInt8]()
    }

    open func get_destination_script() -> [UInt8] {
    	/* EDIT ME */
		return [UInt8]()
    }

    open func get_shutdown_pubkey() -> [UInt8] {
    	/* EDIT ME */
		return [UInt8]()
    }

    open func get_channel_signer(inbound: Bool, channel_value_satoshis: UInt64) -> Sign {
    	/* EDIT ME */
		return Sign(pointer: LDKSign())
    }

    open func get_secure_random_bytes() -> [UInt8] {
    	/* EDIT ME */
		return [UInt8]()
    }

    open func read_chan_signer(reader: [UInt8]) -> Result_SignDecodeErrorZ {
    	/* EDIT ME */
		return Result_SignDecodeErrorZ(pointer: LDKCResult_SignDecodeErrorZ())
    }

    open func sign_invoice(invoice_preimage: [UInt8]) -> Result_RecoverableSignatureNoneZ {
    	/* EDIT ME */
		return Result_RecoverableSignatureNoneZ(pointer: LDKCResult_RecoverableSignatureNoneZ())
    }

    open func free() -> Void {
    	/* EDIT ME */
		
    }

    /* SWIFT_CALLBACKS_END */

}
