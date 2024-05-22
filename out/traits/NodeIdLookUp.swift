// necessary for abort() calls
import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


/// An interface for looking up the node id of a channel counterparty for the purpose of forwarding
/// an [`OnionMessage`].
///
/// [`OnionMessage`]: crate::ln::msgs::OnionMessage
public typealias NodeIdLookUp = Bindings.NodeIdLookUp

extension Bindings {

	/// An interface for looking up the node id of a channel counterparty for the purpose of forwarding
	/// an [`OnionMessage`].
	///
	/// [`OnionMessage`]: crate::ln::msgs::OnionMessage
	open class NodeIdLookUp: NativeTraitWrapper {


		/// Set to false to suppress an individual type's deinit log statements.
		/// Only applicable when log threshold is set to `.Debug`.
		public static var enableDeinitLogging = true

		/// Set to true to suspend the freeing of this type's associated Rust memory.
		/// Should only ever be used for debugging purposes, and will likely be
		/// deprecated soon.
		public static var suspendFreedom = false

		private static var instanceCounter: UInt = 0
		internal let instanceNumber: UInt

		internal var cType: LDKNodeIdLookUp?

		internal init(cType: LDKNodeIdLookUp, instantiationContext: String) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
		}

		internal init(cType: LDKNodeIdLookUp, instantiationContext: String, anchor: NativeTypeWrapper) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = true
			try! self.addAnchor(anchor: anchor)
		}

		internal init(
			cType: LDKNodeIdLookUp, instantiationContext: String, anchor: NativeTypeWrapper, dangle: Bool = false
		) {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			self.cType = cType

			super.init(conflictAvoidingVariableName: 0, instantiationContext: instantiationContext)
			self.dangling = dangle
			try! self.addAnchor(anchor: anchor)
		}


		public init() {
			Self.instanceCounter += 1
			self.instanceNumber = Self.instanceCounter
			super
				.init(
					conflictAvoidingVariableName: 0, instantiationContext: "NodeIdLookUp.swift::\(#function):\(#line)")

			let thisArg = Bindings.instanceToPointer(instance: self)


			func nextNodeIdLambda(this_arg: UnsafeRawPointer?, short_channel_id: UInt64) -> LDKPublicKey {
				let instance: NodeIdLookUp = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "NodeIdLookUp::nextNodeIdLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.nextNodeId(shortChannelId: short_channel_id)

				// cleanup


				// return value (do some wrapping)
				let returnValue = PublicKey(
					value: swiftCallbackResult,
					instantiationContext: "NodeIdLookUp.swift::init()::\(#function):\(#line)"
				)
				.dangleRecursively().cType!

				return returnValue
			}

			func freeLambda(this_arg: UnsafeMutableRawPointer?) {
				let instance: NodeIdLookUp = Bindings.pointerToInstance(
					pointer: this_arg!, sourceMarker: "NodeIdLookUp::freeLambda")

				// Swift callback variable prep


				// Swift callback call
				let swiftCallbackResult = instance.free()

				// cleanup


				// return value (do some wrapping)
				let returnValue = swiftCallbackResult

				return returnValue
			}


			self.cType = LDKNodeIdLookUp(
				this_arg: thisArg,
				next_node_id: nextNodeIdLambda,
				free: freeLambda
			)
		}


		/// Returns the node id of the forwarding node's channel counterparty with `short_channel_id`.
		///
		/// Here, the forwarding node is referring to the node of the [`OnionMessenger`] parameterized
		/// by the [`NodeIdLookUp`] and the counterparty to one of that node's peers.
		///
		/// [`OnionMessenger`]: crate::onion_message::messenger::OnionMessenger
		///
		/// Note that the return value (or a relevant inner pointer) may be NULL or all-0s to represent None
		open func nextNodeId(shortChannelId: UInt64) -> [UInt8] {

			Bindings.print(
				"Error: NodeIdLookUp::nextNodeId MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
				severity: .ERROR)
			abort()
		}

		/// Frees any resources associated with this object given its this_arg pointer.
		/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
		internal func free() {

			// TODO: figure out something smarter
			return ()  // the empty tuple (aka Void) is necessary because Swift is whitespace-agnostic

			Bindings.print(
				"Error: NodeIdLookUp::free MUST be overridden! Offending class: \(String(describing: self)). Aborting.",
				severity: .ERROR)
			abort()
		}


		deinit {
			if Bindings.suspendFreedom || Self.suspendFreedom {
				return
			}

			if !self.dangling {
				if Self.enableDeinitLogging {
					Bindings.print(
						"Freeing NodeIdLookUp \(self.instanceNumber). (Origin: \(self.instantiationContext))")
				}
				self.free()
			} else if Self.enableDeinitLogging {
				Bindings.print(
					"Not freeing NodeIdLookUp \(self.instanceNumber) due to dangle. (Origin: \(self.instantiationContext))"
				)
			}
		}
	}

	internal class NativelyImplementedNodeIdLookUp: NodeIdLookUp {

		/// Returns the node id of the forwarding node's channel counterparty with `short_channel_id`.
		///
		/// Here, the forwarding node is referring to the node of the [`OnionMessenger`] parameterized
		/// by the [`NodeIdLookUp`] and the counterparty to one of that node's peers.
		///
		/// [`OnionMessenger`]: crate::onion_message::messenger::OnionMessenger
		///
		/// Note that the return value (or a relevant inner pointer) may be NULL or all-0s to represent None
		public override func nextNodeId(shortChannelId: UInt64) -> [UInt8] {
			// native call variable prep


			// native method call
			let nativeCallResult = self.cType!.next_node_id(self.cType!.this_arg, shortChannelId)

			// cleanup


			// return value (do some wrapping)
			let returnValue = PublicKey(
				cType: nativeCallResult, instantiationContext: "NodeIdLookUp.swift::\(#function):\(#line)"
			)
			.getValue()

			return returnValue
		}

		/// Frees any resources associated with this object given its this_arg pointer.
		/// Does not need to free the outer struct containing function pointers and may be NULL is no resources need to be freed.
		public override func free() {
			// native call variable prep


			// natively wrapped traits may not necessarily be properly initialized
			// for now just don't free these things
			// self.cType?.free(self.cType?.this_arg)
			return


			// native method call
			let nativeCallResult = self.cType!.free(self.cType!.this_arg)

			// cleanup


			// return value (do some wrapping)
			let returnValue = nativeCallResult

			return returnValue
		}

	}

}
