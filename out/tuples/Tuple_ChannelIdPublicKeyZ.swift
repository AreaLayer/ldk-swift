#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// A tuple of 2 elements. See the individual fields for the types contained.
internal typealias Tuple_ChannelIdPublicKeyZ = Bindings.Tuple_ChannelIdPublicKeyZ

extension Bindings {

	/// A tuple of 2 elements. See the individual fields for the types contained.
	internal class Tuple_ChannelIdPublicKeyZ: NativeTypeWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKC2Tuple_ChannelIdPublicKeyZ?

		internal init(cType: LDKC2Tuple_ChannelIdPublicKeyZ, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKC2Tuple_ChannelIdPublicKeyZ, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKC2Tuple_ChannelIdPublicKeyZ, instantiationContext: String, anchor: NativeTypeWrapper,
			dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		internal convenience init(tuple: (ChannelId, [UInt8]), instantiationContext: String) {
			self.init(a: tuple.0, b: tuple.1, instantiationContext: instantiationContext)
		}


		/// Creates a new tuple which has the same data as `orig`
		/// but with all dynamically-allocated buffers duplicated in new buffers.
		internal func clone() -> Tuple_ChannelIdPublicKeyZ {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKC2Tuple_ChannelIdPublicKeyZ>) in
					C2Tuple_ChannelIdPublicKeyZ_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Tuple_ChannelIdPublicKeyZ(
				cType: nativeCallResult, instantiationContext: "Tuple_ChannelIdPublicKeyZ.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Creates a new C2Tuple_ChannelIdPublicKeyZ from the contained elements.
		public init(a: ChannelId, b: [UInt8], instantiationContext: String) {
			// native call variable prep

			let bPrimitiveWrapper = PublicKey(
				value: b, instantiationContext: "Tuple_ChannelIdPublicKeyZ.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = C2Tuple_ChannelIdPublicKeyZ_new(
				a.dynamicallyDangledClone().cType!, bPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			bPrimitiveWrapper.noOpRetain()


			/*
						// return value (do some wrapping)
						let returnValue = Tuple_ChannelIdPublicKeyZ(cType: nativeCallResult, instantiationContext: "Tuple_ChannelIdPublicKeyZ.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)


		}

		/// Frees any resources used by the C2Tuple_ChannelIdPublicKeyZ.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = C2Tuple_ChannelIdPublicKeyZ_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}


		public func getValue() -> (ChannelId, [UInt8]) {
			return (self.getA(), self.getB())
		}


		/// The element at position 0
		public func getA() -> ChannelId {
			// return value (do some wrapping)
			let returnValue = ChannelId(
				cType: self.cType!.a, instantiationContext: "Tuple_ChannelIdPublicKeyZ.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle()

			return returnValue
		}

		/// The element at position 1
		public func getB() -> [UInt8] {
			// return value (do some wrapping)
			let returnValue = PublicKey(
				cType: self.cType!.b, instantiationContext: "Tuple_ChannelIdPublicKeyZ.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle().getValue()

			return returnValue
		}


		internal func danglingClone() -> Tuple_ChannelIdPublicKeyZ {
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
						"Freeing Tuple_ChannelIdPublicKeyZ \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing Tuple_ChannelIdPublicKeyZ \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}
}
