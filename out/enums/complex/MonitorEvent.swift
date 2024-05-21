import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


///
public typealias MonitorEvent = Bindings.MonitorEvent

extension Bindings {

	/// An event to be processed by the ChannelManager.
	public class MonitorEvent: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKMonitorEvent?

		internal init(cType: LDKMonitorEvent, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKMonitorEvent, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKMonitorEvent, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public enum MonitorEventType {

			/// A monitor event containing an HTLCUpdate.
			case HTLCEvent

			/// Indicates we broadcasted the channel's latest commitment transaction and thus closed the
			/// channel. Holds information about the channel and why it was closed.
			case HolderForceClosedWithInfo

			/// Indicates we broadcasted the channel's latest commitment transaction and thus closed the
			/// channel.
			case HolderForceClosed

			/// Indicates a [`ChannelMonitor`] update has completed. See
			/// [`ChannelMonitorUpdateStatus::InProgress`] for more information on how this is used.
			///
			/// [`ChannelMonitorUpdateStatus::InProgress`]: super::ChannelMonitorUpdateStatus::InProgress
			case Completed

		}

		public func getValueType() -> MonitorEventType {
			switch self.cType!.tag {
				case LDKMonitorEvent_HTLCEvent:
					return .HTLCEvent

				case LDKMonitorEvent_HolderForceClosedWithInfo:
					return .HolderForceClosedWithInfo

				case LDKMonitorEvent_HolderForceClosed:
					return .HolderForceClosed

				case LDKMonitorEvent_Completed:
					return .Completed

				default:
					Bindings.print("Error: Invalid value type for MonitorEvent! Aborting.", severity: .ERROR)
					abort()
			}

		}


		/// Frees any resources used by the MonitorEvent
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = MonitorEvent_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Creates a copy of the MonitorEvent
		internal func clone() -> MonitorEvent {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKMonitorEvent>) in
					MonitorEvent_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = MonitorEvent(
				cType: nativeCallResult, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new HTLCEvent-variant MonitorEvent
		public class func initWithHtlcevent(a: Bindings.HTLCUpdate) -> MonitorEvent {
			// native call variable prep


			// native method call
			let nativeCallResult = MonitorEvent_htlcevent(a.dynamicallyDangledClone().cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = MonitorEvent(
				cType: nativeCallResult, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new HolderForceClosedWithInfo-variant MonitorEvent
		public class func initWithHolderForceClosedWithInfo(
			reason: ClosureReason, outpoint: Bindings.OutPoint, channelId: Bindings.ChannelId
		) -> MonitorEvent {
			// native call variable prep


			// native method call
			let nativeCallResult = MonitorEvent_holder_force_closed_with_info(
				reason.danglingClone().cType!, outpoint.dynamicallyDangledClone().cType!,
				channelId.dynamicallyDangledClone().cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = MonitorEvent(
				cType: nativeCallResult, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new HolderForceClosed-variant MonitorEvent
		public class func initWithHolderForceClosed(a: Bindings.OutPoint) -> MonitorEvent {
			// native call variable prep


			// native method call
			let nativeCallResult = MonitorEvent_holder_force_closed(a.dynamicallyDangledClone().cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = MonitorEvent(
				cType: nativeCallResult, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Utility method to constructs a new Completed-variant MonitorEvent
		public class func initWithCompleted(
			fundingTxo: Bindings.OutPoint, channelId: Bindings.ChannelId, monitorUpdateId: UInt64
		) -> MonitorEvent {
			// native call variable prep


			// native method call
			let nativeCallResult = MonitorEvent_completed(
				fundingTxo.dynamicallyDangledClone().cType!, channelId.dynamicallyDangledClone().cType!, monitorUpdateId
			)

			// cleanup


			// return value (do some wrapping)
			let returnValue = MonitorEvent(
				cType: nativeCallResult, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Checks if two MonitorEvents contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		public class func eq(a: MonitorEvent, b: MonitorEvent) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKMonitorEvent>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKMonitorEvent>) in
						MonitorEvent_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Serialize the MonitorEvent object into a byte array which can be read by MonitorEvent_read
		public func write() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKMonitorEvent>) in
					MonitorEvent_write(objPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)", anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Read a MonitorEvent from a byte array, created by MonitorEvent_write
		public class func read(ser: [UInt8]) -> Result_COption_MonitorEventZDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = MonitorEvent_read(serPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_COption_MonitorEventZDecodeErrorZ(
				cType: nativeCallResult, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)")


			return returnValue
		}


		public func getValueAsHtlcEvent() -> Bindings.HTLCUpdate? {
			if self.cType?.tag != LDKMonitorEvent_HTLCEvent {
				return nil
			}

			return HTLCUpdate(
				cType: self.cType!.htlc_event, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)",
				anchor: self)
		}

		public func getValueAsHolderForceClosedWithInfo() -> HolderForceClosedWithInfo? {
			if self.cType?.tag != LDKMonitorEvent_HolderForceClosedWithInfo {
				return nil
			}

			return MonitorEvent_LDKHolderForceClosedWithInfo_Body(
				cType: self.cType!.holder_force_closed_with_info,
				instantiationContext: "MonitorEvent.swift::\(#function):\(#line)", anchor: self)
		}

		public func getValueAsHolderForceClosed() -> Bindings.OutPoint? {
			if self.cType?.tag != LDKMonitorEvent_HolderForceClosed {
				return nil
			}

			return OutPoint(
				cType: self.cType!.holder_force_closed,
				instantiationContext: "MonitorEvent.swift::\(#function):\(#line)", anchor: self)
		}

		public func getValueAsCompleted() -> Completed? {
			if self.cType?.tag != LDKMonitorEvent_Completed {
				return nil
			}

			return MonitorEvent_LDKCompleted_Body(
				cType: self.cType!.completed, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)",
				anchor: self)
		}


		internal func danglingClone() -> MonitorEvent {
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
						"Freeing MonitorEvent \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing MonitorEvent \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


		///
		internal typealias MonitorEvent_LDKHolderForceClosedWithInfo_Body = HolderForceClosedWithInfo


		///
		public class HolderForceClosedWithInfo: NativeTypeWrapper {


			/// Set to false to suppress an individual type's deinit log statements.
			/// Only applicable when log threshold is set to `.Debug`.
			public static var enableDeinitLogging = true

			/// Set to true to suspend the freeing of this type's associated Rust memory.
			/// Should only ever be used for debugging purposes, and will likely be
			/// deprecated soon.
			public static var suspendFreedom = false

			private static var instanceCounter: UInt = 0
			internal let instanceNumber: UInt

			internal var cType: LDKMonitorEvent_LDKHolderForceClosedWithInfo_Body?

			internal init(cType: LDKMonitorEvent_LDKHolderForceClosedWithInfo_Body, instantiationContext: String) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			}

			internal init(
				cType: LDKMonitorEvent_LDKHolderForceClosedWithInfo_Body, instantiationContext: String,
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
				cType: LDKMonitorEvent_LDKHolderForceClosedWithInfo_Body, instantiationContext: String,
				anchor: NativeTypeWrapper, dangle: Bool = false
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = dangle
				try! self.addAnchor(anchor: anchor)
			}


			/// The reason the channel was closed.
			public func getReason() -> ClosureReason {
				// return value (do some wrapping)
				let returnValue = ClosureReason(
					cType: self.cType!.reason, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)",
					anchor: self)

				return returnValue
			}

			/// The funding outpoint of the channel.
			public func getOutpoint() -> Bindings.OutPoint {
				// return value (do some wrapping)
				let returnValue = Bindings.OutPoint(
					cType: self.cType!.outpoint, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)",
					anchor: self)

				return returnValue
			}

			/// The channel ID of the channel.
			public func getChannelId() -> Bindings.ChannelId {
				// return value (do some wrapping)
				let returnValue = Bindings.ChannelId(
					cType: self.cType!.channel_id, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)",
					anchor: self)

				return returnValue
			}


		}


		///
		internal typealias MonitorEvent_LDKCompleted_Body = Completed


		///
		public class Completed: NativeTypeWrapper {


			/// Set to false to suppress an individual type's deinit log statements.
			/// Only applicable when log threshold is set to `.Debug`.
			public static var enableDeinitLogging = true

			/// Set to true to suspend the freeing of this type's associated Rust memory.
			/// Should only ever be used for debugging purposes, and will likely be
			/// deprecated soon.
			public static var suspendFreedom = false

			private static var instanceCounter: UInt = 0
			internal let instanceNumber: UInt

			internal var cType: LDKMonitorEvent_LDKCompleted_Body?

			internal init(cType: LDKMonitorEvent_LDKCompleted_Body, instantiationContext: String) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			}

			internal init(
				cType: LDKMonitorEvent_LDKCompleted_Body, instantiationContext: String, anchor: NativeTypeWrapper
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = true
				try! self.addAnchor(anchor: anchor)
			}

			internal init(
				cType: LDKMonitorEvent_LDKCompleted_Body, instantiationContext: String, anchor: NativeTypeWrapper,
				dangle: Bool = false
			) {
				Self.instanceCounter += 1
				self.instanceNumber = Self.instanceCounter
				self.cType = cType

				super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
				self.dangling = dangle
				try! self.addAnchor(anchor: anchor)
			}


			/// The funding outpoint of the [`ChannelMonitor`] that was updated
			public func getFundingTxo() -> Bindings.OutPoint {
				// return value (do some wrapping)
				let returnValue = Bindings.OutPoint(
					cType: self.cType!.funding_txo, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)",
					anchor: self)

				return returnValue
			}

			/// The channel ID of the channel associated with the [`ChannelMonitor`]
			public func getChannelId() -> Bindings.ChannelId {
				// return value (do some wrapping)
				let returnValue = Bindings.ChannelId(
					cType: self.cType!.channel_id, instantiationContext: "MonitorEvent.swift::\(#function):\(#line)",
					anchor: self)

				return returnValue
			}

			/// The Update ID from [`ChannelMonitorUpdate::update_id`] which was applied or
			/// [`ChannelMonitor::get_latest_update_id`].
			///
			/// Note that this should only be set to a given update's ID if all previous updates for the
			/// same [`ChannelMonitor`] have been applied and persisted.
			public func getMonitorUpdateId() -> UInt64 {
				// return value (do some wrapping)
				let returnValue = self.cType!.monitor_update_id

				return returnValue
			}


		}


	}

}
