class RouteHintHop {

    var cOpaqueStruct: LDKRouteHintHop?;

	/* DEFAULT_CONSTRUCTOR_START */
    init(src_node_id_arg: [UInt8], short_channel_id_arg: UInt64, fees_arg: RoutingFees, cltv_expiry_delta_arg: UInt16, htlc_minimum_msat_arg: Option_u64Z, htlc_maximum_msat_arg: Option_u64Z) {
    	
		let converted_src_node_id_arg = Bindings.new_LDKPublicKey(array: src_node_id_arg)
        self.cOpaqueStruct = RouteHintHop_new(converted_src_node_id_arg, short_channel_id_arg, fees_arg.cOpaqueStruct!, cltv_expiry_delta_arg, htlc_minimum_msat_arg.cOpaqueStruct!, htlc_maximum_msat_arg.cOpaqueStruct!)
    }
    /* DEFAULT_CONSTRUCTOR_END */

    init(pointer: LDKRouteHintHop){
		self.cOpaqueStruct = pointer
	}

    /* STRUCT_METHODS_START */

    func get_src_node_id() -> [UInt8] {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return Bindings.LDKPublicKey_to_array(nativeType: RouteHintHop_get_src_node_id(this_ptrPointer));
    }

    func set_src_node_id(val: [UInt8]) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_set_src_node_id(this_ptrPointer, Bindings.new_LDKPublicKey(array: val));
    }

    func get_short_channel_id() -> UInt64 {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_get_short_channel_id(this_ptrPointer);
    }

    func set_short_channel_id(val: UInt64) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_set_short_channel_id(this_ptrPointer, val);
    }

    func get_fees() -> RoutingFees {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RoutingFees(pointer: RouteHintHop_get_fees(this_ptrPointer));
    }

    func set_fees(val: RoutingFees) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_set_fees(this_ptrPointer, val.cOpaqueStruct!);
    }

    func get_cltv_expiry_delta() -> UInt16 {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_get_cltv_expiry_delta(this_ptrPointer);
    }

    func set_cltv_expiry_delta(val: UInt16) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_set_cltv_expiry_delta(this_ptrPointer, val);
    }

    func get_htlc_minimum_msat() -> Option_u64Z {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return Option_u64Z(pointer: RouteHintHop_get_htlc_minimum_msat(this_ptrPointer));
    }

    func set_htlc_minimum_msat(val: Option_u64Z) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_set_htlc_minimum_msat(this_ptrPointer, val.cOpaqueStruct!);
    }

    func get_htlc_maximum_msat() -> Option_u64Z {
    	
						
		let this_ptrPointer = withUnsafePointer(to: self.cOpaqueStruct!) { (pointer: UnsafePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return Option_u64Z(pointer: RouteHintHop_get_htlc_maximum_msat(this_ptrPointer));
    }

    func set_htlc_maximum_msat(val: Option_u64Z) -> Void {
    	
						
		let this_ptrPointer = withUnsafeMutablePointer(to: &self.cOpaqueStruct!) { (pointer: UnsafeMutablePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop_set_htlc_maximum_msat(this_ptrPointer, val.cOpaqueStruct!);
    }

    func clone(orig: RouteHintHop) -> RouteHintHop {
    	
						
		let origPointer = withUnsafePointer(to: orig.cOpaqueStruct!) { (pointer: UnsafePointer<LDKRouteHintHop>) in
							
			pointer
						
		}
					
        return RouteHintHop(pointer: RouteHintHop_clone(origPointer));
    }

				
	deinit {
					
					
		RouteHintHop_free(self.cOpaqueStruct!)
				
	}
			
    /* STRUCT_METHODS_END */

}
