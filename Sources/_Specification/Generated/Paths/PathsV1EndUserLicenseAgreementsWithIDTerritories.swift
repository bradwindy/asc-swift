// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.EndUserLicenseAgreements.WithID {
    public var territories: Territories {
        Territories(path: path + "/territories")
    }

    public struct Territories {
        /// Path: `/v1/endUserLicenseAgreements/{id}/territories`
        public let path: String

        public func get(fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil) -> Request<_Specification.TerritoriesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsTerritories, limit), id: "endUserLicenseAgreements-territories-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsTerritories: [FieldsTerritories]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsTerritories, forKey: "fields[territories]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }
    }
}
