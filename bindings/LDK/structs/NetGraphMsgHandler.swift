class NetGraphMsgHandler {

    var cOpaqueStruct: LDKNetGraphMsgHandler?;

    init(chain_access: Access, logger: Logger, network_graph: NetworkGraph) {
    	/* NATIVE_CONSTRUCTOR_PREP */
        self.cOpaqueStruct = NetGraphMsgHandler_from_net_graph(chain_access, logger, network_graph)
    }

    private init(pointer: LDKNetGraphMsgHandler){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    func add_chain_access(&this_arg: NetGraphMsgHandler, &chain_access: Access) -> Void {
    	
						
		let this_argPointer = withUnsafeMutablePointer(to: &this_arg.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKNetGraphMsgHandler>) in
							
			pointer
						
		}
					
						
		let chain_accessPointer = withUnsafeMutablePointer(to: &chain_access.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKAccess>) in
							
			pointer
						
		}
					
        return NetGraphMsgHandler_add_chain_access(this_argPointer, chain_accessPointer);
    }

    func read_locked_graph(this_arg: NetGraphMsgHandler) -> LockedNetworkGraph {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKNetGraphMsgHandler>) in
							
			pointer
						
		}
					
        return NetGraphMsgHandler_read_locked_graph(this_argPointer);
    }

    func as_RoutingMessageHandler(this_arg: NetGraphMsgHandler) -> RoutingMessageHandler {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKNetGraphMsgHandler>) in
							
			pointer
						
		}
					
        return NetGraphMsgHandler_as_RoutingMessageHandler(this_argPointer);
    }

    func as_MessageSendEventsProvider(this_arg: NetGraphMsgHandler) -> MessageSendEventsProvider {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKNetGraphMsgHandler>) in
							
			pointer
						
		}
					
        return NetGraphMsgHandler_as_MessageSendEventsProvider(this_argPointer);
    }

				
	deinit {
					
					
		NetGraphMsgHandler_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
