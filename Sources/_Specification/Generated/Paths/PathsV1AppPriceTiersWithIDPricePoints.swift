// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppPriceTiers.WithID {
    public var pricePoints: PricePoints {
        PricePoints(path: path + "/pricePoints")
    }

    public struct PricePoints {
        /// Path: `/v1/appPriceTiers/{id}/pricePoints`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(filterTerritory: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppPricePointsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterTerritory, fieldsAppPriceTiers, fieldsAppPricePoints, fieldsTerritories, limit, include), id: "appPriceTiers-pricePoints-get_to_many_related")
        }

        private func makeGetQuery(_ filterTerritory: [String]?, _ fieldsAppPriceTiers: [FieldsAppPriceTiers]?, _ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ fieldsTerritories: [FieldsTerritories]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(fieldsAppPriceTiers, forKey: "fields[appPriceTiers]")
            encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppPriceTiers: String, Codable, CaseIterable {
            case pricePoints
        }

        public enum FieldsAppPricePoints: String, Codable, CaseIterable {
            case customerPrice
            case priceTier
            case proceeds
            case territory
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }

        public enum Include: String, Codable, CaseIterable {
            case priceTier
            case territory
        }
    }
}
