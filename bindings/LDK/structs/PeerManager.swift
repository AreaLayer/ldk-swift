public class PeerManager {

    var cOpaqueStruct: LDKPeerManager?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init(message_handler: MessageHandler, our_node_secret: [UInt8], ephemeral_random_data: [UInt8], logger: Logger) {
    	
		let converted_our_node_secret = Bindings.new_LDKSecretKey(array: our_node_secret)
							
		let ephemeral_random_dataPointer = withUnsafePointer(to: Bindings.array_to_tuple32(array: ephemeral_random_data)) { (pointer: UnsafePointer<(UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8,UInt8)>) in
								
			pointer
							
		}
						
        self.cOpaqueStruct = PeerManager_new(message_handler.cOpaqueStruct!, converted_our_node_secret, ephemeral_random_dataPointer, logger.cOpaqueStruct!)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKPeerManager){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func get_peer_node_ids(this_arg: PeerManager) -> [[UInt8]] {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
        return Bindings.LDKCVec_PublicKeyZ_to_array(nativeType: PeerManager_get_peer_node_ids(this_argPointer));
    }

    public func new_outbound_connection(this_arg: PeerManager, their_node_id: [UInt8], descriptor: SocketDescriptor) -> Result_CVec_u8ZPeerHandleErrorZ {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
        return Result_CVec_u8ZPeerHandleErrorZ(pointer: PeerManager_new_outbound_connection(this_argPointer, Bindings.new_LDKPublicKey(array: their_node_id), descriptor.cOpaqueStruct!));
    }

    public func new_inbound_connection(this_arg: PeerManager, descriptor: SocketDescriptor) -> Result_NonePeerHandleErrorZ {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
        return Result_NonePeerHandleErrorZ(pointer: PeerManager_new_inbound_connection(this_argPointer, descriptor.cOpaqueStruct!));
    }

    public func write_buffer_space_avail(this_arg: PeerManager, descriptor: SocketDescriptor) -> Result_NonePeerHandleErrorZ {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
						
		let descriptorPointer = withUnsafeMutablePointer(to: &descriptor.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKSocketDescriptor>) in
							
			pointer
						
		}
					
        return Result_NonePeerHandleErrorZ(pointer: PeerManager_write_buffer_space_avail(this_argPointer, descriptorPointer));
    }

    public func read_event(this_arg: PeerManager, peer_descriptor: SocketDescriptor, data: [UInt8]) -> Result_boolPeerHandleErrorZ {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
						
		let peer_descriptorPointer = withUnsafeMutablePointer(to: &peer_descriptor.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKSocketDescriptor>) in
							
			pointer
						
		}
					
        return Result_boolPeerHandleErrorZ(pointer: PeerManager_read_event(this_argPointer, peer_descriptorPointer, Bindings.new_LDKu8slice(array: data)));
    }

    public func process_events(this_arg: PeerManager) -> Void {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
        return PeerManager_process_events(this_argPointer);
    }

    public func socket_disconnected(this_arg: PeerManager, descriptor: SocketDescriptor) -> Void {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
						
		let descriptorPointer = withUnsafePointer(to: descriptor.cOpaqueStruct!) { (pointer: UnsafePointer<LDKSocketDescriptor>) in
							
			pointer
						
		}
					
        return PeerManager_socket_disconnected(this_argPointer, descriptorPointer);
    }

    public func disconnect_by_node_id(this_arg: PeerManager, node_id: [UInt8], no_connection_possible: Bool) -> Void {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
        return PeerManager_disconnect_by_node_id(this_argPointer, Bindings.new_LDKPublicKey(array: node_id), no_connection_possible);
    }

    public func timer_tick_occurred(this_arg: PeerManager) -> Void {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKPeerManager>) in
							
			pointer
						
		}
					
        return PeerManager_timer_tick_occurred(this_argPointer);
    }

				
	deinit {
					
					
		PeerManager_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
