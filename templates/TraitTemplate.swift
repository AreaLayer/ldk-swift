open class TraitName: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    public var cOpaqueStruct: TraitType?
    internal private(set) var anchor: AnyObject? = nil

    public init() {
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter

    	/* NATIVE_CALLBACKS_START */
		func methodNameCallback(pointer: UnsafeRawPointer?, native_arguments) -> Void {
			let instance: TraitName = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: <sourceMarker>)
			/* SWIFT_CALLBACK_PREP */
			return instance.callbackName(swift_callback_arguments)
		}
		/* NATIVE_CALLBACKS_END */

        self.cOpaqueStruct = TraitType(this_arg: Bindings.instanceToPointer(instance: self), native_callback_instantiation_arguments)
        super.init()
    }

    public init(pointer: TraitType){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init()
	}

	public init(pointer: TraitType, anchor: AnyObject){
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.dangling = true
		self.anchor = anchor
		self.cOpaqueStruct = pointer
		super.init()
	}

    /* SWIFT_CALLBACKS_START */
    open func methodName(public_swift_argument_list) -> Void {
    	/* EDIT ME */
    }
    /* SWIFT_CALLBACKS_END */

}


public class NativelyImplementedTraitName: TraitName {
	/* SWIFT_DEFAULT_CALLBACKS_START */
	public override func methodName(public_swift_argument_list) -> Void {
		/* SWIFT_DEFAULT_CALLBACK_BODY */
	}
	/* SWIFT_DEFAULT_CALLBACKS_END */
}
