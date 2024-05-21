import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


///
public typealias Quantity = Bindings.Quantity

extension Bindings {

	/// Quantity of items supported by an [`Offer`].
	public class Quantity: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKQuantity?

		internal init(cType: LDKQuantity, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKQuantity, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(cType: LDKQuantity, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false)
		{
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public enum QuantityType {

			/// Up to a specific number of items (inclusive). Use when more than one item can be requested
			/// but is limited (e.g., because of per customer or inventory limits).
			///
			/// May be used with `NonZeroU64::new(1)` but prefer to use [`Quantity::One`] if only one item
			/// is supported.
			case Bounded

			/// One or more items. Use when more than one item can be requested without any limit.
			case Unbounded

			/// Only one item. Use when only a single item can be requested.
			case One

		}

		public func getValueType() -> QuantityType {
			switch self.cType!.tag {
				case LDKQuantity_Bounded:
					return .Bounded

				case LDKQuantity_Unbounded:
					return .Unbounded

				case LDKQuantity_One:
					return .One

				default:
					Bindings.print("Error: Invalid value type for Quantity! Aborting.", severity: .ERROR)
					abort()
			}

		}


		/// Frees any resources used by the Quantity
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = Quantity_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Creates a copy of the Quantity
		internal func clone() -> Quantity {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKQuantity>) in
					Quantity_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Quantity(
				cType: nativeCallResult, instantiationContext: "Quantity.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new Bounded-variant Quantity
		public class func initWithBounded(a: UInt64) -> Quantity {
			// native call variable prep


			// native method call
			let nativeCallResult = Quantity_bounded(a)

			// cleanup


			// return value (do some wrapping)
			let returnValue = Quantity(
				cType: nativeCallResult, instantiationContext: "Quantity.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new Unbounded-variant Quantity
		public class func initWithUnbounded() -> Quantity {
			// native call variable prep


			// native method call
			let nativeCallResult = Quantity_unbounded()

			// cleanup


			// return value (do some wrapping)
			let returnValue = Quantity(
				cType: nativeCallResult, instantiationContext: "Quantity.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new One-variant Quantity
		public class func initWithOne() -> Quantity {
			// native call variable prep


			// native method call
			let nativeCallResult = Quantity_one()

			// cleanup


			// return value (do some wrapping)
			let returnValue = Quantity(
				cType: nativeCallResult, instantiationContext: "Quantity.swift::\(#function):\(#line)")


			return returnValue
		}


		public func getValueAsBounded() -> UInt64? {
			if self.cType?.tag != LDKQuantity_Bounded {
				return nil
			}

			return self.cType!.bounded
		}


		internal func danglingClone() -> Quantity {
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
					Bindings.print("Freeing Quantity \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing Quantity \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))")
			}
		}


	}

}
