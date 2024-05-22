#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// The context of a payment made for an invoice requested from a BOLT 12 [`Offer`].
///
/// [`Offer`]: crate::offers::offer::Offer
public typealias Bolt12OfferContext = Bindings.Bolt12OfferContext

extension Bindings {


	/// The context of a payment made for an invoice requested from a BOLT 12 [`Offer`].
	///
	/// [`Offer`]: crate::offers::offer::Offer
	public class Bolt12OfferContext: NativeTypeWrapper {

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

		internal var cType: LDKBolt12OfferContext?

		internal init(cType: LDKBolt12OfferContext, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKBolt12OfferContext, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKBolt12OfferContext, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		/// Frees any resources used by the Bolt12OfferContext, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = Bolt12OfferContext_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// The identifier of the [`Offer`].
		///
		/// [`Offer`]: crate::offers::offer::Offer
		public func getOfferId() -> OfferId {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKBolt12OfferContext>) in
					Bolt12OfferContext_get_offer_id(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = OfferId(
				cType: nativeCallResult, instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// The identifier of the [`Offer`].
		///
		/// [`Offer`]: crate::offers::offer::Offer
		public func setOfferId(val: OfferId) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKBolt12OfferContext>) in
					Bolt12OfferContext_set_offer_id(thisPtrPointer, val.dynamicallyDangledClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Fields from an [`InvoiceRequest`] sent for a [`Bolt12Invoice`].
		///
		/// [`InvoiceRequest`]: crate::offers::invoice_request::InvoiceRequest
		/// [`Bolt12Invoice`]: crate::offers::invoice::Bolt12Invoice
		public func getInvoiceRequest() -> InvoiceRequestFields {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (thisPtrPointer: UnsafePointer<LDKBolt12OfferContext>) in
					Bolt12OfferContext_get_invoice_request(thisPtrPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = InvoiceRequestFields(
				cType: nativeCallResult, instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false)


			return returnValue
		}

		/// Fields from an [`InvoiceRequest`] sent for a [`Bolt12Invoice`].
		///
		/// [`InvoiceRequest`]: crate::offers::invoice_request::InvoiceRequest
		/// [`Bolt12Invoice`]: crate::offers::invoice::Bolt12Invoice
		public func setInvoiceRequest(val: InvoiceRequestFields) {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafeMutablePointer(to: &self.cType!) {
					(thisPtrPointer: UnsafeMutablePointer<LDKBolt12OfferContext>) in
					Bolt12OfferContext_set_invoice_request(thisPtrPointer, val.dynamicallyDangledClone().cType!)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Constructs a new Bolt12OfferContext given each field
		public init(offerIdArg: OfferId, invoiceRequestArg: InvoiceRequestFields) {
			// native call variable prep


			// native method call
			let nativeCallResult = Bolt12OfferContext_new(
				offerIdArg.dynamicallyDangledClone().cType!, invoiceRequestArg.dynamicallyDangledClone().cType!)

			// cleanup

			self.initialCFreeability = nativeCallResult.is_owned


			/*
						// return value (do some wrapping)
						let returnValue = Bolt12OfferContext(cType: nativeCallResult, instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)")
						*/


			self.cType = nativeCallResult

			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0,
					instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)")


		}

		/// Creates a copy of the Bolt12OfferContext
		internal func clone() -> Bolt12OfferContext {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (origPointer: UnsafePointer<LDKBolt12OfferContext>) in
					Bolt12OfferContext_clone(origPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Bolt12OfferContext(
				cType: nativeCallResult, instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Checks if two Bolt12OfferContexts contain equal inner contents.
		/// This ignores pointers and is_owned flags and looks at the values in fields.
		/// Two objects with NULL inner values will be considered "equal" here.
		public class func eq(a: Bolt12OfferContext, b: Bolt12OfferContext) -> Bool {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: a.cType!) { (aPointer: UnsafePointer<LDKBolt12OfferContext>) in

					withUnsafePointer(to: b.cType!) { (bPointer: UnsafePointer<LDKBolt12OfferContext>) in
						Bolt12OfferContext_eq(aPointer, bPointer)
					}

				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Serialize the Bolt12OfferContext object into a byte array which can be read by Bolt12OfferContext_read
		public func write() -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult =
				withUnsafePointer(to: self.cType!) { (objPointer: UnsafePointer<LDKBolt12OfferContext>) in
					Bolt12OfferContext_write(objPointer)
				}


			// cleanup


			// return value (do some wrapping)
			let returnValue = Vec_u8Z(
				cType: nativeCallResult, instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)",
				anchor: self
			)
			.dangle(false).getValue()


			return returnValue
		}

		/// Read a Bolt12OfferContext from a byte array, created by Bolt12OfferContext_write
		public class func read(ser: [UInt8]) -> Result_Bolt12OfferContextDecodeErrorZ {
			// native call variable prep

			let serPrimitiveWrapper = u8slice(
				value: ser, instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)")


			// native method call
			let nativeCallResult = Bolt12OfferContext_read(serPrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			serPrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = Result_Bolt12OfferContextDecodeErrorZ(
				cType: nativeCallResult, instantiationContext: "Bolt12OfferContext.swift::\(#function):\(#line)")


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


		internal func danglingClone() -> Bolt12OfferContext {
			let dangledClone = self.clone()
			dangledClone.dangling = true
			return dangledClone
		}

		internal func dynamicallyDangledClone() -> Bolt12OfferContext {
			let dangledClone = self.clone()
			// if it's owned, i. e. controlled by Rust, it should dangle on our end
			dangledClone.dangling = dangledClone.cType!.is_owned
			return dangledClone
		}

		internal func setCFreeability(freeable: Bool) -> Bolt12OfferContext {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> Bolt12OfferContext {
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
						"Freeing Bolt12OfferContext \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing Bolt12OfferContext \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

