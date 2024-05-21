import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


///
public typealias NextMessageHop = Bindings.NextMessageHop

extension Bindings {

	/// The next hop to forward an onion message along its path.
	///
	/// Note that payment blinded paths always specify their next hop using an explicit node id.
	public class NextMessageHop: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKNextMessageHop?

		internal init(cType: LDKNextMessageHop, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKNextMessageHop, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKNextMessageHop, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public enum NextMessageHopType {

			/// The node id of the next hop.
			case NodeId

			/// The short channel id leading to the next hop.
			case ShortChannelId

		}

		public func getValueType() -> NextMessageHopType {
			switch self.cType!.tag {
				case LDKNextMessageHop_NodeId:
					return .NodeId

				case LDKNextMessageHop_ShortChannelId:
					return .ShortChannelId

				default:
					Bindings.print("Error: Invalid value type for NextMessageHop! Aborting.", severity: .ERROR)
					abort()
			}

		}


		/// Frees any resources used by the NextMessageHop
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = NextMessageHop_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Creates a copy of the NextMessageHop
		internal func clone() -> NextMessageHop {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKNextMessageHop>) in
					NextMessageHop_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = NextMessageHop(
				cType: nativeCallResult, instantiationContext: "NextMessageHop.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new NodeId-variant NextMessageHop
		public class func initWithNodeId(a: [UInt8]) -> NextMessageHop {
			// native call variable prep

			let aPrimitiveWrapper = PublicKey(
				value: a, instantiationContext: "NextMessageHop.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = NextMessageHop_node_id(aPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			aPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = NextMessageHop(
				cType: nativeCallResult, instantiationContext: "NextMessageHop.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new ShortChannelId-variant NextMessageHop
		public class func initWithShortChannelId(a: UInt64) -> NextMessageHop {
			// native call variable prep


			// native method call
			let nativeCallResult = NextMessageHop_short_channel_id(a)

			// cleanup


			// return value (do some wrapping)
			let returnValue = NextMessageHop(
				cType: nativeCallResult, instantiationContext: "NextMessageHop.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Generates a non-cryptographic 64-bit hash of the NextMessageHop.
		public func hash() -> UInt64 {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (oPointer: UnsafePointer<LDKNextMessageHop>) in
					NextMessageHop_hash(oPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Checks if two NextMessageHops contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		public class func eq(a: NextMessageHop, b: NextMessageHop) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKNextMessageHop>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKNextMessageHop>) in
						NextMessageHop_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}


		public func getValueAsNodeId() -> [UInt8]? {
			if self.cType?.tag != LDKNextMessageHop_NodeId {
				return nil
			}

			return PublicKey(
				cType: self.cType!.node_id, instantiationContext: "NextMessageHop.swift::\(#function):\(#line)",
				anchor: self
			)
			.getValue()
		}

		public func getValueAsShortChannelId() -> UInt64? {
			if self.cType?.tag != LDKNextMessageHop_ShortChannelId {
				return nil
			}

			return self.cType!.short_channel_id
		}


		internal func danglingClone() -> NextMessageHop {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing NextMessageHop \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing NextMessageHop \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}

}
