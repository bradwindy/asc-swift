// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.InAppPurchaseAvailabilities {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/inAppPurchaseAvailabilities/{id}`
        public let path: String

        public func get(fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]? = nil, include: [Include]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAvailableTerritories: Int? = nil) -> Request<_Specification.InAppPurchaseAvailabilityResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchaseAvailabilities, include, fieldsTerritories, limitAvailableTerritories), id: "inAppPurchaseAvailabilities-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseAvailabilities: [FieldsInAppPurchaseAvailabilities]?, _ include: [Include]?, _ fieldsTerritories: [FieldsTerritories]?, _ limitAvailableTerritories: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseAvailabilities, forKey: "fields[inAppPurchaseAvailabilities]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
            return encoder.items
        }

        public enum FieldsInAppPurchaseAvailabilities: String, Codable, CaseIterable {
            case availableInNewTerritories
            case availableTerritories
            case inAppPurchase
        }

        public enum Include: String, Codable, CaseIterable {
            case availableTerritories
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }
    }
}
