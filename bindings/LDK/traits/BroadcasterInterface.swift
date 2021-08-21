open class BroadcasterInterface: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    public var cOpaqueStruct: LDKBroadcasterInterface?
    internal private(set) var anchor: AnyObject? = nil

    public init() {
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter

    	/* NATIVE_CALLBACKS_START */

		func broadcast_transactionCallback(pointer: UnsafeRawPointer?, tx: LDKTransaction) -> Void {
			let instance: BroadcasterInterface = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "BroadcasterInterface.swift::broadcast_transaction")
			
			return instance.broadcast_transaction(tx: Bindings.LDKTransaction_to_array(nativeType: tx))
		}

		func freeCallback(pointer: UnsafeMutableRawPointer?) -> Void {
			let instance: BroadcasterInterface = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "BroadcasterInterface.swift::free")
			
			return instance.free()
		}

		/* NATIVE_CALLBACKS_END */

		super.init(conflictAvoidingVariableName: 0)
        self.cOpaqueStruct = LDKBroadcasterInterface(this_arg: Bindings.instanceToPointer(instance: self), 
			broadcast_transaction: broadcast_transactionCallback,
			free: freeCallback)

    }

    public init(pointer: LDKBroadcasterInterface){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
	}

	public init(pointer: LDKBroadcasterInterface, anchor: AnyObject){
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.anchor = anchor
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
		self.dangling = true
	}

    /* SWIFT_CALLBACKS_START */



					internal func dangle() -> BroadcasterInterface {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing BroadcasterInterface \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing BroadcasterInterface \(self.instanceNumber) due to dangle.")
						}
					}
				

    open func broadcast_transaction(tx: [UInt8]) -> Void {
    	/* EDIT ME */
		
    }

    open func free() -> Void {
    	/* EDIT ME */
		
    }

    /* SWIFT_CALLBACKS_END */

}


public class NativelyImplementedBroadcasterInterface: BroadcasterInterface {
	/* SWIFT_DEFAULT_CALLBACKS_START */

	public override func broadcast_transaction(tx: [UInt8]) -> Void {
		
				
						let txWrapper = Bindings.new_LDKTransactionWrapper(array: tx)
						defer {
							txWrapper.noOpRetain()
						}
					
				
				self.cOpaqueStruct!.broadcast_transaction(self.cOpaqueStruct!.this_arg, txWrapper.cOpaqueStruct!)
				
			
	}

	public override func free() -> Void {
		
				
				
				self.cOpaqueStruct!.free(self.cOpaqueStruct!.this_arg)
				
			
	}

	/* SWIFT_DEFAULT_CALLBACKS_END */
}
