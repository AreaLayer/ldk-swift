public class Result_NodeAnnouncementInfoDecodeErrorZ: NativeTypeWrapper {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt

    public internal(set) var cOpaqueStruct: LDKCResult_NodeAnnouncementInfoDecodeErrorZ?

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
					Self.instanceCounter += 1
					self.instanceNumber = Self.instanceCounter
        			self.cOpaqueStruct = LDKCResult_NodeAnnouncementInfoDecodeErrorZ(contents: LDKCResult_NodeAnnouncementInfoDecodeErrorZPtr(), result_ok: true)
        			super.init(conflictAvoidingVariableName: 0)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_NodeAnnouncementInfoDecodeErrorZ){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
		super.init(conflictAvoidingVariableName: 0)
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> DecodeError? {
				if self.cOpaqueStruct?.result_ok == false {
					return DecodeError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
			public func getValue() -> NodeAnnouncementInfo? {
				if self.cOpaqueStruct?.result_ok == true {
					return NodeAnnouncementInfo(pointer: self.cOpaqueStruct!.contents.result.pointee)
				}
				return nil
			}
			
    public class func ok(o: NodeAnnouncementInfo) -> Result_NodeAnnouncementInfoDecodeErrorZ {
    	
        return Result_NodeAnnouncementInfoDecodeErrorZ(pointer: CResult_NodeAnnouncementInfoDecodeErrorZ_ok(o.danglingClone().cOpaqueStruct!));
    }

    public class func err(e: DecodeError) -> Result_NodeAnnouncementInfoDecodeErrorZ {
    	
        return Result_NodeAnnouncementInfoDecodeErrorZ(pointer: CResult_NodeAnnouncementInfoDecodeErrorZ_err(e.danglingClone().cOpaqueStruct!));
    }

    internal func free() -> Void {
    	
        return CResult_NodeAnnouncementInfoDecodeErrorZ_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> Result_NodeAnnouncementInfoDecodeErrorZ {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							print("Freeing Result_NodeAnnouncementInfoDecodeErrorZ \(self.instanceNumber).")
							self.free()
						} else {
							print("Not freeing Result_NodeAnnouncementInfoDecodeErrorZ \(self.instanceNumber) due to dangle.")
						}
					}
				

    public func clone() -> Result_NodeAnnouncementInfoDecodeErrorZ {
    	
        return Result_NodeAnnouncementInfoDecodeErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_NodeAnnouncementInfoDecodeErrorZ>) in
CResult_NodeAnnouncementInfoDecodeErrorZ_clone(origPointer)
});
    }

					internal func danglingClone() -> Result_NodeAnnouncementInfoDecodeErrorZ {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* RESULT_METHODS_END */

}
