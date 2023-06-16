// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppPriceTiers {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appPriceTiers/{id}`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(fieldsAppPriceTiers: [FieldsAppPriceTiers]? = nil, include: [Include]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, limitPricePoints: Int? = nil) -> Request<_Specification.AppPriceTierResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppPriceTiers, include, fieldsAppPricePoints, limitPricePoints), id: "appPriceTiers-get_instance")
        }

        private func makeGetQuery(_ fieldsAppPriceTiers: [FieldsAppPriceTiers]?, _ include: [Include]?, _ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ limitPricePoints: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppPriceTiers, forKey: "fields[appPriceTiers]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
            encoder.encode(limitPricePoints, forKey: "limit[pricePoints]")
            return encoder.items
        }

        public enum FieldsAppPriceTiers: String, Codable, CaseIterable {
            case pricePoints
        }

        public enum Include: String, Codable, CaseIterable {
            case pricePoints
        }

        public enum FieldsAppPricePoints: String, Codable, CaseIterable {
            case customerPrice
            case priceTier
            case proceeds
            case territory
        }
    }
}
