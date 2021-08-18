public class ErrorAction {

	private static var instanceCounter: UInt = 0
	internal let instanceNumber: UInt
	internal private(set) var dangling = false

    public internal(set) var cOpaqueStruct: LDKErrorAction?;

	

    public init(pointer: LDKErrorAction){
    	Self.instanceCounter += 1
		self.instanceNumber = Self.instanceCounter
		self.cOpaqueStruct = pointer
	}

    /* OPTION_METHODS_START */

				public enum ErrorActionValueType {
					case DisconnectPeer, IgnoreAndLog, SendErrorMessage
				}
				
				public func getValueType() -> ErrorActionValueType? {
					switch self.cOpaqueStruct?.tag {
                    
					case LDKErrorAction_DisconnectPeer:
						return .DisconnectPeer
					case LDKErrorAction_IgnoreAndLog:
						return .IgnoreAndLog
					case LDKErrorAction_SendErrorMessage:
						return .SendErrorMessage
                    default:
                        return nil
                    }
				}
				
				
					public func getValueAsDisconnectPeer() -> DisconnectPeer? {
						if self.cOpaqueStruct?.tag != LDKErrorAction_DisconnectPeer {
							return nil
						}
						return DisconnectPeer(pointer: self.cOpaqueStruct!.disconnect_peer)
					}
				
					public func getValueAsIgnoreAndLog() -> LDKLevel? {
						if self.cOpaqueStruct?.tag != LDKErrorAction_IgnoreAndLog {
							return nil
						}
						return self.cOpaqueStruct!.ignore_and_log
					}
				
					public func getValueAsSendErrorMessage() -> SendErrorMessage? {
						if self.cOpaqueStruct?.tag != LDKErrorAction_SendErrorMessage {
							return nil
						}
						return SendErrorMessage(pointer: self.cOpaqueStruct!.send_error_message)
					}
				
			
    internal func free() -> Void {
    	
        return ErrorAction_free(self.cOpaqueStruct!);
    }

					internal func dangle() -> ErrorAction {
        				self.dangling = true
						return self
					}
					
					deinit {
						if !self.dangling {
							self.free()
						}
					}
				

    public func clone() -> ErrorAction {
    	
        return ErrorAction(pointer: withUnsafePointer(to: self.cOpaqueStruct!) { (origPointer: UnsafePointer<LDKErrorAction>) in
ErrorAction_clone(origPointer)
});
    }

					internal func danglingClone() -> ErrorAction {
        				let dangledClone = self.clone()
						dangledClone.dangling = true
						return dangledClone
					}
				

    /* OPTION_METHODS_END */

	

			public class DisconnectPeer {
				
				
				var cOpaqueStruct: LDKErrorAction_LDKDisconnectPeer_Body?;
				fileprivate init(pointer: LDKErrorAction_LDKDisconnectPeer_Body) {
					self.cOpaqueStruct = pointer
				}
			
				
				
					public func getMsg() -> ErrorMessage {
						return ErrorMessage(pointer: self.cOpaqueStruct!.msg)
					}
				
				
			}
		

			public class SendErrorMessage {
				
				
				var cOpaqueStruct: LDKErrorAction_LDKSendErrorMessage_Body?;
				fileprivate init(pointer: LDKErrorAction_LDKSendErrorMessage_Body) {
					self.cOpaqueStruct = pointer
				}
			
				
				
					public func getMsg() -> ErrorMessage {
						return ErrorMessage(pointer: self.cOpaqueStruct!.msg)
					}
				
				
			}
		
}
