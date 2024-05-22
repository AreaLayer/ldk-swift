import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


///
public typealias OutputSpendStatus = Bindings.OutputSpendStatus

extension Bindings {

	/// The current status of the output spend.
	public class OutputSpendStatus: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKOutputSpendStatus?

		internal init(cType: LDKOutputSpendStatus, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKOutputSpendStatus, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKOutputSpendStatus, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public enum OutputSpendStatusType {

			/// The output is tracked but an initial spending transaction hasn't been generated and
			/// broadcasted yet.
			case PendingInitialBroadcast

			/// A transaction spending the output has been broadcasted but is pending its first confirmation on-chain.
			case PendingFirstConfirmation

			/// A transaction spending the output has been confirmed on-chain but will be tracked until it
			/// reaches [`ANTI_REORG_DELAY`] confirmations.
			case PendingThresholdConfirmations

		}

		public func getValueType() -> OutputSpendStatusType {
			switch self.cType!.tag {
				case LDKOutputSpendStatus_PendingInitialBroadcast:
					return .PendingInitialBroadcast

				case LDKOutputSpendStatus_PendingFirstConfirmation:
					return .PendingFirstConfirmation

				case LDKOutputSpendStatus_PendingThresholdConfirmations:
					return .PendingThresholdConfirmations

				default:
					Bindings.print("Error: Invalid value type for OutputSpendStatus! Aborting.", severity: .ERROR)
					abort()
			}

		}


		/// Frees any resources used by the OutputSpendStatus
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = OutputSpendStatus_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Creates a copy of the OutputSpendStatus
		internal func clone() -> OutputSpendStatus {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKOutputSpendStatus>) in
					OutputSpendStatus_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = OutputSpendStatus(
				cType: nativeCallResult, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new PendingInitialBroadcast-variant OutputSpendStatus
		public class func initWithPendingInitialBroadcast(delayedUntilHeight: UInt32?) -> OutputSpendStatus {
			// native call variable prep

			let delayedUntilHeightOption = Option_u32Z(
				some: delayedUntilHeight, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)"
			)
			.danglingClone()


			// native method call
			let nativeCallResult = OutputSpendStatus_pending_initial_broadcast(delayedUntilHeightOption.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = OutputSpendStatus(
				cType: nativeCallResult, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new PendingFirstConfirmation-variant OutputSpendStatus
		public class func initWithPendingFirstConfirmation(
			firstBroadcastHash: [UInt8], latestBroadcastHeight: UInt32, latestSpendingTx: [UInt8]
		) -> OutputSpendStatus {
			// native call variable prep

			let firstBroadcastHashPrimitiveWrapper = ThirtyTwoBytes(
				value: firstBroadcastHash, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")

			let latestSpendingTxPrimitiveWrapper = Transaction(
				value: latestSpendingTx, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult = OutputSpendStatus_pending_first_confirmation(
				firstBroadcastHashPrimitiveWrapper.cType!, latestBroadcastHeight,
				latestSpendingTxPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			firstBroadcastHashPrimitiveWrapper.noOpRetain()

			// for elided types, we need this
			latestSpendingTxPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = OutputSpendStatus(
				cType: nativeCallResult, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new PendingThresholdConfirmations-variant OutputSpendStatus
		public class func initWithPendingThresholdConfirmations(
			firstBroadcastHash: [UInt8], latestBroadcastHeight: UInt32, latestSpendingTx: [UInt8],
			confirmationHeight: UInt32, confirmationHash: [UInt8]
		) -> OutputSpendStatus {
			// native call variable prep

			let firstBroadcastHashPrimitiveWrapper = ThirtyTwoBytes(
				value: firstBroadcastHash, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")

			let latestSpendingTxPrimitiveWrapper = Transaction(
				value: latestSpendingTx, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)"
			)
			.dangle()

			let confirmationHashPrimitiveWrapper = ThirtyTwoBytes(
				value: confirmationHash, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = OutputSpendStatus_pending_threshold_confirmations(
				firstBroadcastHashPrimitiveWrapper.cType!, latestBroadcastHeight,
				latestSpendingTxPrimitiveWrapper.cType!, confirmationHeight, confirmationHashPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			firstBroadcastHashPrimitiveWrapper.noOpRetain()

			// for elided types, we need this
			latestSpendingTxPrimitiveWrapper.noOpRetain()

			// for elided types, we need this
			confirmationHashPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = OutputSpendStatus(
				cType: nativeCallResult, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Checks if two OutputSpendStatuss contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		public class func eq(a: OutputSpendStatus, b: OutputSpendStatus) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKOutputSpendStatus>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKOutputSpendStatus>) in
						OutputSpendStatus_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Serialize the OutputSpendStatus object into a byte array which can be read by OutputSpendStatus_read
		public func write() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKOutputSpendStatus>) in
					OutputSpendStatus_write(objPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Read a OutputSpendStatus from a byte array, created by OutputSpendStatus_write
		public class func read(ser: [UInt8]) -> Result_OutputSpendStatusDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = OutputSpendStatus_read(serPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_OutputSpendStatusDecodeErrorZ(
				cType: nativeCallResult, instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)")


			return returnValue
		}


		public func getValueAsPendingInitialBroadcast() -> PendingInitialBroadcast? {
			if self.cType?.tag != LDKOutputSpendStatus_PendingInitialBroadcast {
				return nil
			}

			return OutputSpendStatus_LDKPendingInitialBroadcast_Body(
				cType: self.cType!.pending_initial_broadcast,
				instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self)
		}

		public func getValueAsPendingFirstConfirmation() -> PendingFirstConfirmation? {
			if self.cType?.tag != LDKOutputSpendStatus_PendingFirstConfirmation {
				return nil
			}

			return OutputSpendStatus_LDKPendingFirstConfirmation_Body(
				cType: self.cType!.pending_first_confirmation,
				instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self)
		}

		public func getValueAsPendingThresholdConfirmations() -> PendingThresholdConfirmations? {
			if self.cType?.tag != LDKOutputSpendStatus_PendingThresholdConfirmations {
				return nil
			}

			return OutputSpendStatus_LDKPendingThresholdConfirmations_Body(
				cType: self.cType!.pending_threshold_confirmations,
				instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self)
		}


		internal func danglingClone() -> OutputSpendStatus {
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
						"Freeing OutputSpendStatus \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing OutputSpendStatus \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


		///
		internal typealias OutputSpendStatus_LDKPendingInitialBroadcast_Body = PendingInitialBroadcast


		///
		public class PendingInitialBroadcast: NativeTypeWrapper {


			/// Set to false to suppress an individual type's deinit log statements.
			/// Only applicable when log threshold is set to `.Debug`.
			public static var enableDeinitLogging = true

			/// Set to true to suspend the freeing of this type's associated Rust memory.
			/// Should only ever be used for debugging purposes, and will likely be
			/// deprecated soon.
			public static var suspendFreedom = false

			private static var instanceCounter: UInt = 0
			internal let instanceNumber: UInt

			internal var cType: LDKOutputSpendStatus_LDKPendingInitialBroadcast_Body?

			internal init(cType: LDKOutputSpendStatus_LDKPendingInitialBroadcast_Body, instantiationContext: String) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			}

			internal init(
				cType: LDKOutputSpendStatus_LDKPendingInitialBroadcast_Body, instantiationContext: String,
				anchor: NativeTypeWrapper
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = true
				try! self.addAnchor(anchor: anchor)
			}

			internal init(
				cType: LDKOutputSpendStatus_LDKPendingInitialBroadcast_Body, instantiationContext: String,
				anchor: NativeTypeWrapper, dangle: Bool = false
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = dangle
				try! self.addAnchor(anchor: anchor)
			}


			/// The height at which we will first generate and broadcast a spending transaction.
			public func getDelayedUntilHeight() -> UInt32? {
				// return value (do some wrapping)
				let returnValue = Option_u32Z(
					cType: self.cType!.delayed_until_height,
					instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self
				)
				.getValue()

				return returnValue
			}


		}


		///
		internal typealias OutputSpendStatus_LDKPendingFirstConfirmation_Body = PendingFirstConfirmation


		///
		public class PendingFirstConfirmation: NativeTypeWrapper {


			/// Set to false to suppress an individual type's deinit log statements.
			/// Only applicable when log threshold is set to `.Debug`.
			public static var enableDeinitLogging = true

			/// Set to true to suspend the freeing of this type's associated Rust memory.
			/// Should only ever be used for debugging purposes, and will likely be
			/// deprecated soon.
			public static var suspendFreedom = false

			private static var instanceCounter: UInt = 0
			internal let instanceNumber: UInt

			internal var cType: LDKOutputSpendStatus_LDKPendingFirstConfirmation_Body?

			internal init(cType: LDKOutputSpendStatus_LDKPendingFirstConfirmation_Body, instantiationContext: String) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			}

			internal init(
				cType: LDKOutputSpendStatus_LDKPendingFirstConfirmation_Body, instantiationContext: String,
				anchor: NativeTypeWrapper
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = true
				try! self.addAnchor(anchor: anchor)
			}

			internal init(
				cType: LDKOutputSpendStatus_LDKPendingFirstConfirmation_Body, instantiationContext: String,
				anchor: NativeTypeWrapper, dangle: Bool = false
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = dangle
				try! self.addAnchor(anchor: anchor)
			}


			/// The hash of the chain tip when we first broadcast a transaction spending this output.
			public func getFirstBroadcastHash() -> [UInt8] {
				// return value (do some wrapping)
				let returnValue = ThirtyTwoBytes(
					cType: self.cType!.first_broadcast_hash,
					instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self
				)
				.getValue()

				return returnValue
			}

			/// The best height when we last broadcast a transaction spending this output.
			public func getLatestBroadcastHeight() -> UInt32 {
				// return value (do some wrapping)
				let returnValue = self.cType!.latest_broadcast_height

				return returnValue
			}

			/// The transaction spending this output we last broadcasted.
			public func getLatestSpendingTx() -> [UInt8] {
				// return value (do some wrapping)
				let returnValue = Transaction(
					cType: self.cType!.latest_spending_tx,
					instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self
				)
				.getValue()

				return returnValue
			}


		}


		///
		internal typealias OutputSpendStatus_LDKPendingThresholdConfirmations_Body = PendingThresholdConfirmations


		///
		public class PendingThresholdConfirmations: NativeTypeWrapper {


			/// Set to false to suppress an individual type's deinit log statements.
			/// Only applicable when log threshold is set to `.Debug`.
			public static var enableDeinitLogging = true

			/// Set to true to suspend the freeing of this type's associated Rust memory.
			/// Should only ever be used for debugging purposes, and will likely be
			/// deprecated soon.
			public static var suspendFreedom = false

			private static var instanceCounter: UInt = 0
			internal let instanceNumber: UInt

			internal var cType: LDKOutputSpendStatus_LDKPendingThresholdConfirmations_Body?

			internal init(
				cType: LDKOutputSpendStatus_LDKPendingThresholdConfirmations_Body, instantiationContext: String
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			}

			internal init(
				cType: LDKOutputSpendStatus_LDKPendingThresholdConfirmations_Body, instantiationContext: String,
				anchor: NativeTypeWrapper
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = true
				try! self.addAnchor(anchor: anchor)
			}

			internal init(
				cType: LDKOutputSpendStatus_LDKPendingThresholdConfirmations_Body, instantiationContext: String,
				anchor: NativeTypeWrapper, dangle: Bool = false
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = dangle
				try! self.addAnchor(anchor: anchor)
			}


			/// The hash of the chain tip when we first broadcast a transaction spending this output.
			public func getFirstBroadcastHash() -> [UInt8] {
				// return value (do some wrapping)
				let returnValue = ThirtyTwoBytes(
					cType: self.cType!.first_broadcast_hash,
					instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self
				)
				.getValue()

				return returnValue
			}

			/// The best height when we last broadcast a transaction spending this output.
			public func getLatestBroadcastHeight() -> UInt32 {
				// return value (do some wrapping)
				let returnValue = self.cType!.latest_broadcast_height

				return returnValue
			}

			/// The transaction spending this output we saw confirmed on-chain.
			public func getLatestSpendingTx() -> [UInt8] {
				// return value (do some wrapping)
				let returnValue = Transaction(
					cType: self.cType!.latest_spending_tx,
					instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self
				)
				.getValue()

				return returnValue
			}

			/// The height at which the spending transaction was confirmed.
			public func getConfirmationHeight() -> UInt32 {
				// return value (do some wrapping)
				let returnValue = self.cType!.confirmation_height

				return returnValue
			}

			/// The hash of the block in which the spending transaction was confirmed.
			public func getConfirmationHash() -> [UInt8] {
				// return value (do some wrapping)
				let returnValue = ThirtyTwoBytes(
					cType: self.cType!.confirmation_hash,
					instantiationContext: "OutputSpendStatus.swift::\(#function):\(#line)", anchor: self
				)
				.getValue()

				return returnValue
			}


		}


	}

}
