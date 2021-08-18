open class Sign {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public var cOpaqueStruct: LDKSign?;

    public init() {
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter

    	/* NATIVE_CALLBACKS_START */

		func writeCallback(pointer: UnsafeRawPointer?) -> LDKCVec_u8Z {
			let instance: Sign = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "Sign.swift::write")
			
			return Bindings.new_LDKCVec_u8Z(array: instance.write());
		}

		func cloneCallback(pointer: UnsafeRawPointer?) -> UnsafeMutableRawPointer? {
			let instance: Sign = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "Sign.swift::clone")
			
			return instance.clone();
		}

		func freeCallback(pointer: UnsafeMutableRawPointer?) -> Void {
			let instance: Sign = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "Sign.swift::free")
			
			return instance.free();
		}

		/* NATIVE_CALLBACKS_END */

        self.cOpaqueStruct = LDKSign(this_arg: Bindings.instanceToPointer(instance: self), 
			BaseSign: LDKBaseSign(),
			BaseSign_clone: nil,
			write: writeCallback,
			clone: cloneCallback,
			free: freeCallback)
    }

    public init(pointer: LDKSign){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* SWIFT_CALLBACKS_START */


				public func clone() -> Sign {
					
					return withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKSign>) in

					Sign(pointer: Sign_clone(origPointer))
					
}
				}
			

					internal func danglingClone() -> Sign {
        				var dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				


				internal func free() -> Void {
					
					
					Sign_free(self.danglingClone().cOpaqueStruct!)
					
				}
			

					internal func dangle() -> Sign {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    open func write() -> [UInt8] {
    	/* EDIT ME */
		return [UInt8]()
    }





    /* SWIFT_CALLBACKS_END */

}


public class NativelyImplementedSign: Sign {
	/* SWIFT_DEFAULT_CALLBACKS_START */

	public override func write() -> [UInt8] {
		
				return 
				Bindings.LDKCVec_u8Z_to_array(nativeType: self.cOpaqueStruct!.write(self.cOpaqueStruct!.this_arg))
				
			
	}

	public override func free() -> Void {
		
				
				self.cOpaqueStruct!.free(self.cOpaqueStruct!.this_arg)
				
			
	}

	/* SWIFT_DEFAULT_CALLBACKS_END */
}
