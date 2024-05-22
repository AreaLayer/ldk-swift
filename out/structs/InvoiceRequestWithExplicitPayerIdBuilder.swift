#if SWIFT_PACKAGE
	import LDKHeaders
#endif

/// Builds an [`InvoiceRequest`] from an [`Offer`] for the \"offer to be paid\" flow.
///
/// See [module-level documentation] for usage.
///
/// [module-level documentation]: self
public typealias InvoiceRequestWithExplicitPayerIdBuilder = Bindings.InvoiceRequestWithExplicitPayerIdBuilder

extension Bindings {


	/// Builds an [`InvoiceRequest`] from an [`Offer`] for the \"offer to be paid\" flow.
	///
	/// See [module-level documentation] for usage.
	///
	/// [module-level documentation]: self
	public class InvoiceRequestWithExplicitPayerIdBuilder: NativeTypeWrapper {

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

		internal var cType: LDKInvoiceRequestWithExplicitPayerIdBuilder?

		internal init(cType: LDKInvoiceRequestWithExplicitPayerIdBuilder, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(
			cType: LDKInvoiceRequestWithExplicitPayerIdBuilder, instantiationContext: String, anchor: NativeTypeWrapper
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKInvoiceRequestWithExplicitPayerIdBuilder, instantiationContext: String, anchor: NativeTypeWrapper,
			dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType
			self.initialCFreeability = self.cType!.is_owned
			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		/// Frees any resources used by the InvoiceRequestWithExplicitPayerIdBuilder, if is_owned is set and inner is non-NULL.
		internal func free() {
			// native call variable prep


			// native method call
			let nativeCallResult = InvoiceRequestWithExplicitPayerIdBuilder_free(self.cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult


			return returnValue
		}

		/// Builds an unsigned [`InvoiceRequest`] after checking for valid semantics. It can be signed
		/// by [`UnsignedInvoiceRequest::sign`].
		@available(
			*, deprecated,
			message: "This method passes the following non-cloneable, but freeable objects by value: self."
		)
		public func build() -> Result_UnsignedInvoiceRequestBolt12SemanticErrorZ {
			// native call variable prep


			// native method call
			let nativeCallResult = InvoiceRequestWithExplicitPayerIdBuilder_build(self.dangle().cType!)

			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_UnsignedInvoiceRequestBolt12SemanticErrorZ(
				cType: nativeCallResult,
				instantiationContext: "InvoiceRequestWithExplicitPayerIdBuilder.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Sets the [`InvoiceRequest::chain`] of the given [`Network`] for paying an invoice. If not
		/// called, [`Network::Bitcoin`] is assumed. Errors if the chain for `network` is not supported
		/// by the offer.
		///
		/// Successive calls to this method will override the previous setting.
		@available(
			*, deprecated,
			message: "This method passes the following non-cloneable, but freeable objects by value: self."
		)
		public func chain(network: Network) -> Result_NoneBolt12SemanticErrorZ {
			// native call variable prep


			// native method call
			let nativeCallResult = InvoiceRequestWithExplicitPayerIdBuilder_chain(
				self.dangle().cType!, network.getCValue())

			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_NoneBolt12SemanticErrorZ(
				cType: nativeCallResult,
				instantiationContext: "InvoiceRequestWithExplicitPayerIdBuilder.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Sets the [`InvoiceRequest::amount_msats`] for paying an invoice. Errors if `amount_msats` is
		/// not at least the expected invoice amount (i.e., [`Offer::amount`] times [`quantity`]).
		///
		/// Successive calls to this method will override the previous setting.
		///
		/// [`quantity`]: Self::quantity
		@available(
			*, deprecated,
			message: "This method passes the following non-cloneable, but freeable objects by value: self."
		)
		public func amountMsats(amountMsats: UInt64) -> Result_NoneBolt12SemanticErrorZ {
			// native call variable prep


			// native method call
			let nativeCallResult = InvoiceRequestWithExplicitPayerIdBuilder_amount_msats(
				self.dangle().cType!, amountMsats)

			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_NoneBolt12SemanticErrorZ(
				cType: nativeCallResult,
				instantiationContext: "InvoiceRequestWithExplicitPayerIdBuilder.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Sets [`InvoiceRequest::quantity`] of items. If not set, `1` is assumed. Errors if `quantity`
		/// does not conform to [`Offer::is_valid_quantity`].
		///
		/// Successive calls to this method will override the previous setting.
		@available(
			*, deprecated,
			message: "This method passes the following non-cloneable, but freeable objects by value: self."
		)
		public func quantity(quantity: UInt64) -> Result_NoneBolt12SemanticErrorZ {
			// native call variable prep


			// native method call
			let nativeCallResult = InvoiceRequestWithExplicitPayerIdBuilder_quantity(self.dangle().cType!, quantity)

			// cleanup


			// return value (do some wrapping)
			let returnValue = Result_NoneBolt12SemanticErrorZ(
				cType: nativeCallResult,
				instantiationContext: "InvoiceRequestWithExplicitPayerIdBuilder.swift::\(#function):\(#line)")


			return returnValue
		}

		/// Sets the [`InvoiceRequest::payer_note`].
		///
		/// Successive calls to this method will override the previous setting.
		@available(
			*, deprecated,
			message: "This method passes the following non-cloneable, but freeable objects by value: self."
		)
		public func payerNote(payerNote: String) {
			// native call variable prep

			let payerNotePrimitiveWrapper = Str(
				value: payerNote,
				instantiationContext: "InvoiceRequestWithExplicitPayerIdBuilder.swift::\(#function):\(#line)"
			)
			.dangle()


			// native method call
			let nativeCallResult = InvoiceRequestWithExplicitPayerIdBuilder_payer_note(
				self.dangle().cType!, payerNotePrimitiveWrapper.cType!)

			// cleanup

			// for elided types, we need this
			payerNotePrimitiveWrapper.noOpRetain()


			// return value (do some wrapping)
			let returnValue = nativeCallResult


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


		internal func setCFreeability(freeable: Bool) -> InvoiceRequestWithExplicitPayerIdBuilder {
			self.cType!.is_owned = freeable
			return self
		}

		internal func dynamicDangle() -> InvoiceRequestWithExplicitPayerIdBuilder {
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
						"Freeing InvoiceRequestWithExplicitPayerIdBuilder \(self.instanceNumber). (Origin: \(self.instantiationContext))"
					)
				}

				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing InvoiceRequestWithExplicitPayerIdBuilder \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}


	}


}

