open class FeeEstimator {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public var cOpaqueStruct: LDKFeeEstimator?;

    public init() {
		Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter

    	/* NATIVE_CALLBACKS_START */

		func get_est_sat_per_1000_weightCallback(pointer: UnsafeRawPointer?, confirmation_target: LDKConfirmationTarget) -> UInt32 {
			let instance: FeeEstimator = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "FeeEstimator.swift::get_est_sat_per_1000_weight")
			
			return instance.get_est_sat_per_1000_weight(confirmation_target: confirmation_target)
		}

		func freeCallback(pointer: UnsafeMutableRawPointer?) -> Void {
			let instance: FeeEstimator = Bindings.pointerToInstance(pointer: pointer!, sourceMarker: "FeeEstimator.swift::free")
			
			return instance.free()
		}

		/* NATIVE_CALLBACKS_END */

        self.cOpaqueStruct = LDKFeeEstimator(this_arg: Bindings.instanceToPointer(instance: self), 
			get_est_sat_per_1000_weight: get_est_sat_per_1000_weightCallback,
			free: freeCallback)
    }

    public init(pointer: LDKFeeEstimator){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* SWIFT_CALLBACKS_START */


				internal func free() -> Void {
					
					
					FeeEstimator_free(self.cOpaqueStruct!)
					
				}
			

					internal func dangle() -> FeeEstimator {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    open func get_est_sat_per_1000_weight(confirmation_target: LDKConfirmationTarget) -> UInt32 {
    	/* EDIT ME */
		return 0
    }



    /* SWIFT_CALLBACKS_END */

}


public class NativelyImplementedFeeEstimator: FeeEstimator {
	/* SWIFT_DEFAULT_CALLBACKS_START */

	public override func get_est_sat_per_1000_weight(confirmation_target: LDKConfirmationTarget) -> UInt32 {
		
				return 
				self.cOpaqueStruct!.get_est_sat_per_1000_weight(self.cOpaqueStruct!.this_arg, confirmation_target)
				
			
	}

	public override func free() -> Void {
		
				
				self.cOpaqueStruct!.free(self.cOpaqueStruct!.this_arg)
				
			
	}

	/* SWIFT_DEFAULT_CALLBACKS_END */
}
