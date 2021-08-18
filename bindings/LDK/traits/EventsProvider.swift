open class EventsProvider {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public var cOpaqueStruct: LDKEventsProvider?;

    public init() {
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter

    	/* NATIVE_CALLBACKS_START */

		func process_pending_eventsCallback(pointer: UnsafeRawPointer?, handler: LDKEventHandler) -> Void {
			let instance: EventsProvider = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "EventsProvider.swift::process_pending_events")
			
			return instance.process_pending_events(handler: EventHandler(pointer: handler));
		}

		func freeCallback(pointer: UnsafeMutableRawPointer?) -> Void {
			let instance: EventsProvider = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "EventsProvider.swift::free")
			
			return instance.free();
		}

		/* NATIVE_CALLBACKS_END */

        self.cOpaqueStruct = LDKEventsProvider(this_arg: Bindings.instanceToPointer(instance: self), 
			process_pending_events: process_pending_eventsCallback,
			free: freeCallback)
    }

    public init(pointer: LDKEventsProvider){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* SWIFT_CALLBACKS_START */


				internal func free() -> Void {
					
					
					EventsProvider_free(self.cOpaqueStruct!)
					
				}
			

					internal func dangle() -> EventsProvider {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    open func process_pending_events(handler: EventHandler) -> Void {
    	/* EDIT ME */
		
    }



    /* SWIFT_CALLBACKS_END */

}


public class NativelyImplementedEventsProvider: EventsProvider {
	/* SWIFT_DEFAULT_CALLBACKS_START */

	public override func process_pending_events(handler: EventHandler) -> Void {
		
				
				self.cOpaqueStruct!.process_pending_events(self.cOpaqueStruct!.this_arg, handler.cOpaqueStruct!)
				
			
	}

	public override func free() -> Void {
		
				
				self.cOpaqueStruct!.free(self.cOpaqueStruct!.this_arg)
				
			
	}

	/* SWIFT_DEFAULT_CALLBACKS_END */
}
