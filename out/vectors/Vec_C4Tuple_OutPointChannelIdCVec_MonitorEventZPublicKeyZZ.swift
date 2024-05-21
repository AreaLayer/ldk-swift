#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// A dynamically-allocated array of crate::c_types::derived::C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZs of arbitrary size.
/// This corresponds to std::vector in C++
internal typealias Vec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ = Bindings
	.Vec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ

extension Bindings {

	/// A dynamically-allocated array of crate::c_types::derived::C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZs of arbitrary size.
	/// This corresponds to std::vector in C++
	internal class Vec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKCVec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ?

		internal init(
			cType: LDKCVec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ, instantiationContext: String
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(
			cType: LDKCVec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ, instantiationContext: String,
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
			cType: LDKCVec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ, instantiationContext: String,
			anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		internal init(array: [(OutPoint, ChannelId, [MonitorEvent], [UInt8])], instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)


			let rustArray = array.map {
				(currentValueDepth1: (OutPoint, ChannelId, [MonitorEvent], [UInt8]))
					-> LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ in

				let currentValueDepth1Tuple = Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ(
					tuple: currentValueDepth1,
					instantiationContext:
						"Vec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ.swift::\(#function):\(#line)"
				)
				.danglingClone()

				return currentValueDepth1Tuple.cType!
			}


			let dataContainer = UnsafeMutablePointer<LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ>
				.allocate(capacity: array.count)
			dataContainer.initialize(from: rustArray, count: array.count)

			let vector = LDKCVec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ(
				data: dataContainer, datalen: UInt(array.count))
			self.cType = vector
		}

		public func getValue() -> [(OutPoint, ChannelId, [MonitorEvent], [UInt8])] {

			var array = [LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ]()


			for index1 in 0..<Int(self.cType!.datalen) {
				let currentEntry1 = self.cType!.data[index1]
				array.append(currentEntry1)
			}


			let swiftArray = array.map {
				(currentCType: LDKC4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ) -> (
					OutPoint, ChannelId, [MonitorEvent], [UInt8]
				) in
				Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZ(
					cType: currentCType,
					instantiationContext:
						"Vec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ.swift::\(#function):\(#line)"
				)
				.dangle().getValue()
			}
			return swiftArray
		}


		/// Frees the buffer pointed to by `data` if `datalen` is non-0.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = CVec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}


		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing Vec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing Vec_C4Tuple_OutPointChannelIdCVec_MonitorEventZPublicKeyZZ \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}

}
