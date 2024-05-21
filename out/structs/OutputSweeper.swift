#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// A utility that keeps track of [`SpendableOutputDescriptor`]s, persists them in a given
/// [`KVStore`] and regularly retries sweeping them based on a callback given to the constructor
/// methods.
///
/// Users should call [`Self::track_spendable_outputs`] for any [`SpendableOutputDescriptor`]s received via [`Event::SpendableOutputs`].
///
/// This needs to be notified of chain state changes either via its [`Listen`] or [`Confirm`]
/// implementation and hence has to be connected with the utilized chain data sources.
///
/// If chain data is provided via the [`Confirm`] interface or via filtered blocks, users are
/// required to give their chain data sources (i.e., [`Filter`] implementation) to the respective
/// constructor.
///
/// [`Event::SpendableOutputs`]: crate::events::Event::SpendableOutputs
public typealias OutputSweeper = Bindings.OutputSweeper

extension Bindings {


	/// A utility that keeps track of [`SpendableOutputDescriptor`]s, persists them in a given
	/// [`KVStore`] and regularly retries sweeping them based on a callback given to the constructor
	/// methods.
	///
	/// Users should call [`Self::track_spendable_outputs`] for any [`SpendableOutputDescriptor`]s received via [`Event::SpendableOutputs`].
	///
	/// This needs to be notified of chain state changes either via its [`Listen`] or [`Confirm`]
	/// implementation and hence has to be connected with the utilized chain data sources.
	///
	/// If chain data is provided via the [`Confirm`] interface or via filtered blocks, users are
	/// required to give their chain data sources (i.e., [`Filter`] implementation) to the respective
	/// constructor.
	///
	/// [`Event::SpendableOutputs`]: crate::events::Event::SpendableOutputs
	public class OutputSweeper: NativeTypeWrapper {

		let initialCFreeability: Bool


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKOutputSweeper?

		internal init(cType: LDKOutputSweeper, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKOutputSweeper, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKOutputSweeper, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		/// Frees any resources used by the OutputSweeper, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = OutputSweeper_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Constructs a new [`OutputSweeper`].
		///
		/// If chain data is provided via the [`Confirm`] interface or via filtered blocks, users also
		/// need to register their [`Filter`] implementation via the given `chain_data_source`.
		public init(
			bestBlock: BestBlock, broadcaster: BroadcasterInterface, feeEstimator: FeeEstimator,
			chainDataSource: Filter?, outputSpender: OutputSpender, changeDestinationSource: ChangeDestinationSource,
			kvStore: KVStore, logger: Logger
		) {
			// native call variable prep

			let chainDataSourceOption = Option_FilterZ(
				some: chainDataSource, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult = OutputSweeper_new(
				bestBlock.dynamicallyDangledClone().cType!, broadcaster.activate().cType!,
				feeEstimator.activate().cType!, chainDataSourceOption.cType!, outputSpender.activate().cType!,
				changeDestinationSource.activate().cType!, kvStore.activate().cType!, logger.activate().cType!)

			// cleanup

			self.initialCFreeability = nativeCallResult.is_owned


			/*
						// return value (do some wrapping)
						let returnValue = OutputSweeper(cType: nativeCallResult, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)")


		}

		/// Tells the sweeper to track the given outputs descriptors.
		///
		/// Usually, this should be called based on the values emitted by the
		/// [`Event::SpendableOutputs`].
		///
		/// The given `exclude_static_outputs` flag controls whether the sweeper will filter out
		/// [`SpendableOutputDescriptor::StaticOutput`]s, which may be handled directly by the on-chain
		/// wallet implementation.
		///
		/// If `delay_until_height` is set, we will delay the spending until the respective block
		/// height is reached. This can be used to batch spends, e.g., to reduce on-chain fees.
		///
		/// Returns `Err` on persistence failure, in which case the call may be safely retried.
		///
		/// [`Event::SpendableOutputs`]: crate::events::Event::SpendableOutputs
		///
		/// Note that channel_id (or a relevant inner pointer) may be NULL or all-0s to represent None
		public func trackSpendableOutputs(
			outputDescriptors: [SpendableOutputDescriptor], channelId: ChannelId, excludeStaticOutputs: Bool,
			delayUntilHeight: UInt32?
		) -> Result_NoneNoneZ {
			// native call variable prep

			let outputDescriptorsVector = Vec_SpendableOutputDescriptorZ(
				array: outputDescriptors, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)"
			)
			.dangle()

			let delayUntilHeightOption = Option_u32Z(
				some: delayUntilHeight, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)"
			)
			.danglingClone()


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKOutputSweeper>) in
					OutputSweeper_track_spendable_outputs(
						thisArgPointer, outputDescriptorsVector.cType!, channelId.dynamicallyDangledClone().cType!,
						excludeStaticOutputs, delayUntilHeightOption.cType!)
				}


			// cleanup

			// outputDescriptorsVector.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_NoneNoneZ(
				cType: nativeCallResult, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// Returns a list of the currently tracked spendable outputs.
		public func trackedSpendableOutputs() -> [TrackedSpendableOutput] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKOutputSweeper>) in
					OutputSweeper_tracked_spendable_outputs(thisArgPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_TrackedSpendableOutputZ(
				cType: nativeCallResult, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Gets the latest best block which was connected either via the [`Listen`] or
		/// [`Confirm`] interfaces.
		public func currentBestBlock() -> BestBlock {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKOutputSweeper>) in
					OutputSweeper_current_best_block(thisArgPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = BestBlock(
				cType: nativeCallResult, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// Constructs a new Listen which calls the relevant methods on this_arg.
		/// This copies the `inner` pointer in this_arg and thus the returned Listen must be freed before this_arg is
		public func asListen() -> Listen {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKOutputSweeper>) in
					OutputSweeper_as_Listen(thisArgPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = NativelyImplementedListen(
				cType: nativeCallResult, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)",
				anchor: self)


			return returnValue
		}

		/// Constructs a new Confirm which calls the relevant methods on this_arg.
		/// This copies the `inner` pointer in this_arg and thus the returned Confirm must be freed before this_arg is
		public func asConfirm() -> Confirm {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisArgPointer: UnsafePointer<LDKOutputSweeper>) in
					OutputSweeper_as_Confirm(thisArgPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = NativelyImplementedConfirm(
				cType: nativeCallResult, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)",
				anchor: self)


			return returnValue
		}

		/// Read a OutputSweeper from a byte array, created by OutputSweeper_write
		public class func read(
			ser: [UInt8], argA: BroadcasterInterface, argB: FeeEstimator, argC: Filter?, argD: OutputSpender,
			argE: ChangeDestinationSource, argF: KVStore, argG: Logger
		) -> Result_OutputSweeperDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)")

			let argCOption = Option_FilterZ(
				some: argC, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult = OutputSweeper_read(
				serPrimitiveWrapper.cType!, argA.activate().cType!, argB.activate().cType!, argCOption.cType!,
				argD.activate().cType!, argE.activate().cType!, argF.activate().cType!, argG.activate().cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_OutputSweeperDecodeErrorZ(
				cType: nativeCallResult, instantiationContext: "OutputSweeper.swift::\(#function):\(#line)")


			return returnValue
		}


		/// Indicates that this is the only struct which contains the same pointer.
		/// Rust functions which take ownership of an object provided via an argument require
		/// this to be true and invalidate the object pointed to by inner.
		public func isOwned() -> Bool {
			// return value (do some wrapping)
			let returnValue = self.cType!.is_owned

			return returnValue
		}


		internal func setCFreeability(freeable: Bool) -> OutputSweeper {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> OutputSweeper {
			self.dangling = self.cType!.is_owned
			return self
		}

		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing OutputSweeper \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing OutputSweeper \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

