public class PositiveTimestamp {

    var cOpaqueStruct: LDKPositiveTimestamp?;

	

    public init(pointer: LDKPositiveTimestamp){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    public func clone(orig: PositiveTimestamp) -> PositiveTimestamp {
    	
        return withUnsafePointer(to: orig.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKPositiveTimestamp>) in
PositiveTimestamp(pointer: PositiveTimestamp_clone(origPointer))
};
    }

    public func from_unix_timestamp(unix_seconds: UInt64) -> Result_PositiveTimestampCreationErrorZ {
    	
        return Result_PositiveTimestampCreationErrorZ(pointer: PositiveTimestamp_from_unix_timestamp(unix_seconds));
    }

    public func from_system_time(time: UInt64) -> Result_PositiveTimestampCreationErrorZ {
    	
        return Result_PositiveTimestampCreationErrorZ(pointer: PositiveTimestamp_from_system_time(time));
    }

    public func as_unix_timestamp(this_arg: PositiveTimestamp) -> UInt64 {
    	
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKPositiveTimestamp>) in
PositiveTimestamp_as_unix_timestamp(this_argPointer)
};
    }

    public func as_time(this_arg: PositiveTimestamp) -> UInt64 {
    	
        return withUnsafePointer(to: this_arg.cOpaqueStruct!) { (this_argPointer: UnsafePointer<LDKPositiveTimestamp>) in
PositiveTimestamp_as_time(this_argPointer)
};
    }

				
	deinit {
					
					
		PositiveTimestamp_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
