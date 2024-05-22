#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// A tuple of 2 elements. See the individual fields for the types contained.
internal typealias Tuple_BestBlockOutputSweeperZ = Bindings.Tuple_BestBlockOutputSweeperZ

extension Bindings {

	/// A tuple of 2 elements. See the individual fields for the types contained.
	internal class Tuple_BestBlockOutputSweeperZ: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKC2Tuple_BestBlockOutputSweeperZ?

		internal init(cType: LDKC2Tuple_BestBlockOutputSweeperZ, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(
			cType: LDKC2Tuple_BestBlockOutputSweeperZ, instantiationContext: String, anchor: NativeTypeWrapper
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKC2Tuple_BestBlockOutputSweeperZ, instantiationContext: String, anchor: NativeTypeWrapper,
			dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		internal convenience init(tuple: (BestBlock, OutputSweeper), instantiationContext: String) {
			self.init(a: tuple.0, b: tuple.1, instantiationContext: instantiationContext)
		}


		/// Creates a new C2Tuple_BestBlockOutputSweeperZ from the contained elements.
		@available(
			*, deprecated,
			message: "This method passes the following non-cloneable, but freeable objects by value: `b`."
		)
		public init(a: BestBlock, b: OutputSweeper, instantiationContext: String) {
			// native call variable prep


			// native method call
			let nativeCallResult = C2Tuple_BestBlockOutputSweeperZ_new(
				a.dynamicallyDangledClone().cType!, b.dangle().cType!)

			// cleanup


			/*
						// return value (do some wrapping)
						let returnValue = Tuple_BestBlockOutputSweeperZ(cType: nativeCallResult, instantiationContext: "Tuple_BestBlockOutputSweeperZ.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)


		}

		/// Frees any resources used by the C2Tuple_BestBlockOutputSweeperZ.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = C2Tuple_BestBlockOutputSweeperZ_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Read a C2Tuple_BestBlockOutputSweeperZ from a byte array, created by C2Tuple_BestBlockOutputSweeperZ_write
		public class func read(
			ser: [UInt8], argA: BroadcasterInterface, argB: FeeEstimator, argC: Filter?, argD: OutputSpender,
			argE: ChangeDestinationSource, argF: KVStore, argG: Logger
		) -> Result_C2Tuple_BestBlockOutputSweeperZDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "Tuple_BestBlockOutputSweeperZ.swift::\(#function):\(#line)")

			let argCOption = Option_FilterZ(
				some: argC, instantiationContext: "Tuple_BestBlockOutputSweeperZ.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult = C2Tuple_BestBlockOutputSweeperZ_read(
				serPrimitiveWrapper.cType!, argA.activate().cType!, argB.activate().cType!, argCOption.cType!,
				argD.activate().cType!, argE.activate().cType!, argF.activate().cType!, argG.activate().cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_C2Tuple_BestBlockOutputSweeperZDecodeErrorZ(
				cType: nativeCallResult,
				instantiationContext: "Tuple_BestBlockOutputSweeperZ.swift::\(#function):\(#line)")


			return returnValue
		}


		public func getValue() -> (BestBlock, OutputSweeper) {
			return (self.getA(), self.getB())
		}


		/// The element at position 0
		public func getA() -> BestBlock {
			// return value (do some wrapping)
			let returnValue = BestBlock(
				cType: self.cType!.a,
				instantiationContext: "Tuple_BestBlockOutputSweeperZ.swift::\(#function):\(#line)", anchor: self
			)
			.dangle()

			return returnValue
		}

		/// The element at position 1
		public func getB() -> OutputSweeper {
			// return value (do some wrapping)
			let returnValue = OutputSweeper(
				cType: self.cType!.b,
				instantiationContext: "Tuple_BestBlockOutputSweeperZ.swift::\(#function):\(#line)", anchor: self
			)
			.dangle()

			return returnValue
		}


		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing Tuple_BestBlockOutputSweeperZ \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing Tuple_BestBlockOutputSweeperZ \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}
}
