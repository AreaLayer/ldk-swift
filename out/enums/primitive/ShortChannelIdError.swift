import Foundation

#if SWIFT_PACKAGE
	import LDKHeaders
#endif


/// A `short_channel_id` construction error
public typealias ShortChannelIdError = Bindings.ShortChannelIdError

extension Bindings {

	/// A `short_channel_id` construction error
	public enum ShortChannelIdError {


		/// Block height too high
		case BlockOverflow

		/// Tx index too high
		case TxIndexOverflow

		/// Vout index too high
		case VoutIndexOverflow


		internal init(value: LDKShortChannelIdError) {
			switch value {

				case LDKShortChannelIdError_BlockOverflow:
					self = .BlockOverflow

				case LDKShortChannelIdError_TxIndexOverflow:
					self = .TxIndexOverflow

				case LDKShortChannelIdError_VoutIndexOverflow:
					self = .VoutIndexOverflow

				default:
					Bindings.print("Error: Invalid value type for ShortChannelIdError! Aborting.", severity: .ERROR)
					abort()

			}
		}

		internal func getCValue() -> LDKShortChannelIdError {
			switch self {

				case .BlockOverflow:
					return LDKShortChannelIdError_BlockOverflow

				case .TxIndexOverflow:
					return LDKShortChannelIdError_TxIndexOverflow

				case .VoutIndexOverflow:
					return LDKShortChannelIdError_VoutIndexOverflow

			}
		}

	}

}
