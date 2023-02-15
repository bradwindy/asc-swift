// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID.Relationships {
    public var prices: Prices {
        Prices(path: path + "/prices")
    }

    public struct Prices {
        /// Path: `/v1/subscriptions/{id}/relationships/prices`
        public let path: String

        public func get(limit: Int? = nil) -> Request<_Specification.SubscriptionPricesLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "subscriptions-prices-get_to_many_relationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func delete(_ body: _Specification.SubscriptionPricesLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "subscriptions-prices-delete_to_many_relationship")
        }
    }
}
