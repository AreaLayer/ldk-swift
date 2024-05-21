import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


///
public typealias SpendingDelay = Bindings.SpendingDelay

extension Bindings {

	/// A `enum` signalling to the [`OutputSweeper`] that it should delay spending an output until a
	/// future block height is reached.
	public class SpendingDelay: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKSpendingDelay?

		internal init(cType: LDKSpendingDelay, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKSpendingDelay, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKSpendingDelay, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public enum SpendingDelayType {

			/// A relative delay indicating we shouldn't spend the output before `cur_height + num_blocks`
			/// is reached.
			case Relative

			/// An absolute delay indicating we shouldn't spend the output before `height` is reached.
			case Absolute

		}

		public func getValueType() -> SpendingDelayType {
			switch self.cType!.tag {
				case LDKSpendingDelay_Relative:
					return .Relative

				case LDKSpendingDelay_Absolute:
					return .Absolute

				default:
					Bindings.print("Error: Invalid value type for SpendingDelay! Aborting.", severity: .ERROR)
					abort()
			}

		}


		/// Frees any resources used by the SpendingDelay
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = SpendingDelay_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Creates a copy of the SpendingDelay
		internal func clone() -> SpendingDelay {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKSpendingDelay>) in
					SpendingDelay_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = SpendingDelay(
				cType: nativeCallResult, instantiationContext: "SpendingDelay.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new Relative-variant SpendingDelay
		public class func initWithRelative(numBlocks: UInt32) -> SpendingDelay {
			// native call variable prep


			// native method call
			let nativeCallResult = SpendingDelay_relative(numBlocks)

			// cleanup


			// return value (do some wrapping)
			let returnValue = SpendingDelay(
				cType: nativeCallResult, instantiationContext: "SpendingDelay.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new Absolute-variant SpendingDelay
		public class func initWithAbsolute(height: UInt32) -> SpendingDelay {
			// native call variable prep


			// native method call
			let nativeCallResult = SpendingDelay_absolute(height)

			// cleanup


			// return value (do some wrapping)
			let returnValue = SpendingDelay(
				cType: nativeCallResult, instantiationContext: "SpendingDelay.swift::\(#function):\(#line)")


			return returnValue
		}


		public func getValueAsRelative() -> Relative? {
			if self.cType?.tag != LDKSpendingDelay_Relative {
				return nil
			}

			return SpendingDelay_LDKRelative_Body(
				cType: self.cType!.relative, instantiationContext: "SpendingDelay.swift::\(#function):\(#line)",
				anchor: self)
		}

		public func getValueAsAbsolute() -> Absolute? {
			if self.cType?.tag != LDKSpendingDelay_Absolute {
				return nil
			}

			return SpendingDelay_LDKAbsolute_Body(
				cType: self.cType!.absolute, instantiationContext: "SpendingDelay.swift::\(#function):\(#line)",
				anchor: self)
		}


		internal func danglingClone() -> SpendingDelay {
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
						"Freeing SpendingDelay \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing SpendingDelay \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


		///
		internal typealias SpendingDelay_LDKRelative_Body = Relative


		///
		public class Relative: NativeTypeWrapper {


			/// Set to false to suppress an individual type's deinit log statements.
			/// Only applicable when log threshold is set to `.Debug`.
			public static var enableDeinitLogging = true

			/// Set to true to suspend the freeing of this type's associated Rust memory.
			/// Should only ever be used for debugging purposes, and will likely be
			/// deprecated soon.
			public static var suspendFreedom = false

			private static var instanceCounter: UInt = 0
			internal let instanceNumber: UInt

			internal var cType: LDKSpendingDelay_LDKRelative_Body?

			internal init(cType: LDKSpendingDelay_LDKRelative_Body, instantiationContext: String) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			}

			internal init(
				cType: LDKSpendingDelay_LDKRelative_Body, instantiationContext: String, anchor: NativeTypeWrapper
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = true
				try! self.addAnchor(anchor: anchor)
			}

			internal init(
				cType: LDKSpendingDelay_LDKRelative_Body, instantiationContext: String, anchor: NativeTypeWrapper,
				dangle: Bool = false
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = dangle
				try! self.addAnchor(anchor: anchor)
			}


			/// The number of blocks until we'll generate and broadcast the spending transaction.
			public func getNumBlocks() -> UInt32 {
				// return value (do some wrapping)
				let returnValue = self.cType!.num_blocks

				return returnValue
			}


		}


		///
		internal typealias SpendingDelay_LDKAbsolute_Body = Absolute


		///
		public class Absolute: NativeTypeWrapper {


			/// Set to false to suppress an individual type's deinit log statements.
			/// Only applicable when log threshold is set to `.Debug`.
			public static var enableDeinitLogging = true

			/// Set to true to suspend the freeing of this type's associated Rust memory.
			/// Should only ever be used for debugging purposes, and will likely be
			/// deprecated soon.
			public static var suspendFreedom = false

			private static var instanceCounter: UInt = 0
			internal let instanceNumber: UInt

			internal var cType: LDKSpendingDelay_LDKAbsolute_Body?

			internal init(cType: LDKSpendingDelay_LDKAbsolute_Body, instantiationContext: String) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			}

			internal init(
				cType: LDKSpendingDelay_LDKAbsolute_Body, instantiationContext: String, anchor: NativeTypeWrapper
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = true
				try! self.addAnchor(anchor: anchor)
			}

			internal init(
				cType: LDKSpendingDelay_LDKAbsolute_Body, instantiationContext: String, anchor: NativeTypeWrapper,
				dangle: Bool = false
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = dangle
				try! self.addAnchor(anchor: anchor)
			}


			/// The height at which we'll generate and broadcast the spending transaction.
			public func getHeight() -> UInt32 {
				// return value (do some wrapping)
				let returnValue = self.cType!.height

				return returnValue
			}


		}


	}

}
