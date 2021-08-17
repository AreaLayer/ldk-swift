import LDKHeaders

public class Result_NoneMonitorUpdateErrorZ {

    public internal(set) var cOpaqueStruct: LDKCResult_NoneMonitorUpdateErrorZ?;

	/* DEFAULT_CONSTRUCTOR_START */

				public init() {
        			self.cOpaqueStruct = LDKCResult_NoneMonitorUpdateErrorZ(contents: LDKCResult_NoneMonitorUpdateErrorZPtr(), result_ok: true)
				}
			
    /* DEFAULT_CONSTRUCTOR_END */

    public init(pointer: LDKCResult_NoneMonitorUpdateErrorZ){
		self.cOpaqueStruct = pointer
	}

	public func isOk() -> Bool {
		return self.cOpaqueStruct?.result_ok == true
	}

    /* RESULT_METHODS_START */

			public func getError() -> MonitorUpdateError? {
				if self.cOpaqueStruct?.result_ok == false {
					return MonitorUpdateError(pointer: self.cOpaqueStruct!.contents.err.pointee)
				}
				return nil
			}
			
    public class func ok() -> Result_NoneMonitorUpdateErrorZ {
    	
        return Result_NoneMonitorUpdateErrorZ(pointer: CResult_NoneMonitorUpdateErrorZ_ok());
    }

    public class func err(e: MonitorUpdateError) -> Result_NoneMonitorUpdateErrorZ {
    	
        return Result_NoneMonitorUpdateErrorZ(pointer: CResult_NoneMonitorUpdateErrorZ_err(e.clone().cOpaqueStruct!));
    }

    public func free() -> Void {
    	
        return CResult_NoneMonitorUpdateErrorZ_free(self.clone().cOpaqueStruct!);
    }

    public func clone() -> Result_NoneMonitorUpdateErrorZ {
    	
        return Result_NoneMonitorUpdateErrorZ(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKCResult_NoneMonitorUpdateErrorZ>) in
CResult_NoneMonitorUpdateErrorZ_clone(origPointer)
});
    }

    /* RESULT_METHODS_END */

}
