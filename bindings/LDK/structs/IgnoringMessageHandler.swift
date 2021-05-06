public class IgnoringMessageHandler {

    var cOpaqueStruct: LDKIgnoringMessageHandler?;

	/* DEFAULT_CONSTRUCTOR_START */
    public init() {
    	
        self.cOpaqueStruct = IgnoringMessageHandler_new()
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKIgnoringMessageHandler){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func as_MessageSendEventsProvider(this_arg: IgnoringMessageHandler) -> MessageSendEventsProvider {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKIgnoringMessageHandler>) in
							
			pointer
						
		}
					
        return MessageSendEventsProvider(pointer: IgnoringMessageHandler_as_MessageSendEventsProvider(this_argPointer));
    }

    public func as_RoutingMessageHandler(this_arg: IgnoringMessageHandler) -> RoutingMessageHandler {
    	
						
		let this_argPointer = withUnsafePointer(to: this_arg.cOpaqueStruct!) { (pointer: UnsafePointer<LDKIgnoringMessageHandler>) in
							
			pointer
						
		}
					
        return RoutingMessageHandler(pointer: IgnoringMessageHandler_as_RoutingMessageHandler(this_argPointer));
    }

				
	deinit {
					
					
		IgnoringMessageHandler_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
