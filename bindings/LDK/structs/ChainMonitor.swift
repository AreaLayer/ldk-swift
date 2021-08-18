import LDKHeaders

public class ChainMonitor {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKChainMonitor?;


	/* DEFAULT_CONSTRUCTOR_START */
    public init(chain_source: Filter?, broadcaster: BroadcasterInterface, logger: Logger, feeest: FeeEstimator, persister: Persist) {
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
    	
							var chain_sourcePointer: UnsafeMutablePointer<LDKFilter>? = nil
							if let chain_sourceUnwrapped = chain_source {
								chain_sourcePointer = UnsafeMutablePointer<LDKFilter>.allocate(capacity: 1)
								chain_sourcePointer!.initialize(to: chain_sourceUnwrapped.cOpaqueStruct!)
							}
						
        self.cOpaqueStruct = ChainMonitor_new(chain_sourcePointer, broadcaster.cOpaqueStruct!, logger.cOpaqueStruct!, feeest.cOpaqueStruct!, persister.cOpaqueStruct!)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKChainMonitor){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func as_Listen() -> Listen {
    	
        return NativelyImplementedListen(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKChainMonitor>) in
ChainMonitor_as_Listen(this_argPointer)
});
    }

    public func as_Confirm() -> Confirm {
    	
        return NativelyImplementedConfirm(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKChainMonitor>) in
ChainMonitor_as_Confirm(this_argPointer)
});
    }

    public func as_Watch() -> Watch {
    	
        return NativelyImplementedWatch(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKChainMonitor>) in
ChainMonitor_as_Watch(this_argPointer)
});
    }

    public func as_EventsProvider() -> EventsProvider {
    	
        return NativelyImplementedEventsProvider(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKChainMonitor>) in
ChainMonitor_as_EventsProvider(this_argPointer)
});
    }

    internal func free() -> Void {
    	
        return ChainMonitor_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> ChainMonitor {
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
