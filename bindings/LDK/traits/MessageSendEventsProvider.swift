open class MessageSendEventsProvider: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    public var cOpaqueStruct: LDKMessageSendEventsProvider?
    internal private(set) var anchor: AnyObject? = nil

    public init() {
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter

    	/* NATIVE_CALLBACKS_START */

		func get_and_clear_pending_msg_eventsCallback(pointer: UnsafeRawPointer?) -> LDKCVec_MessageSendEventZ {
			let instance: MessageSendEventsProvider = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "MessageSendEventsProvider.swift::get_and_clear_pending_msg_events")
			
			
					let returnWrapper = Bindings.new_LDKCVec_MessageSendEventZWrapper(array: instance.get_and_clear_pending_msg_events())
					defer {
						returnWrapper.noOpRetain()
					}
					return returnWrapper.dangle().cOpaqueStruct!
				
		}

		func freeCallback(pointer: UnsafeMutableRawPointer?) -> Void {
			let instance: MessageSendEventsProvider = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "MessageSendEventsProvider.swift::free")
			
			return instance.free()
		}

		/* NATIVE_CALLBACKS_END */

		super.init(conflictAvoidingVariableName: 0)
        self.cOpaqueStruct = LDKMessageSendEventsProvider(this_arg: Bindings.instanceToPointer(instance: self), 
			get_and_clear_pending_msg_events: get_and_clear_pending_msg_eventsCallback,
			free: freeCallback)

    }

    public init(pointer: LDKMessageSendEventsProvider){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
	}

	public init(pointer: LDKMessageSendEventsProvider, anchor: AnyObject){
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.anchor = anchor
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
		self.dangling = true
	}

    /* SWIFT_CALLBACKS_START */



					internal func dangle() -> MessageSendEventsProvider {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing MessageSendEventsProvider \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing MessageSendEventsProvider \(self.instanceNumber) due to dangle.")
						}
					}
				

    open func get_and_clear_pending_msg_events() -> [LDKMessageSendEvent] {
    	/* EDIT ME */
		return [LDKMessageSendEvent]()
    }

    open func free() -> Void {
    	/* EDIT ME */
		
    }

    /* SWIFT_CALLBACKS_END */

}


public class NativelyImplementedMessageSendEventsProvider: MessageSendEventsProvider {
	/* SWIFT_DEFAULT_CALLBACKS_START */

	public override func get_and_clear_pending_msg_events() -> [LDKMessageSendEvent] {
		
				
				return 
				Bindings.LDKCVec_MessageSendEventZ_to_array(nativeType: self.cOpaqueStruct!.get_and_clear_pending_msg_events(self.cOpaqueStruct!.this_arg))
				
			
	}

	public override func free() -> Void {
		
				
				
				self.cOpaqueStruct!.free(self.cOpaqueStruct!.this_arg)
				
			
	}

	/* SWIFT_DEFAULT_CALLBACKS_END */
}
