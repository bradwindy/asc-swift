// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var ciMacOsVersions: CiMacOsVersions {
        CiMacOsVersions(path: path + "/ciMacOsVersions")
    }

    public struct CiMacOsVersions {
        /// Path: `/v1/ciMacOsVersions`
        public let path: String

        public func get(fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, limitXcodeVersions: Int? = nil) -> Request<_Specification.CiMacOsVersionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiMacOsVersions, limit, include, fieldsCiXcodeVersions, limitXcodeVersions), id: "ciMacOsVersions-get_collection")
        }

        private func makeGetQuery(_ fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?, _ limit: Int?, _ include: [Include]?, _ fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?, _ limitXcodeVersions: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
            encoder.encode(limitXcodeVersions, forKey: "limit[xcodeVersions]")
            return encoder.items
        }

        public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
            case name
            case version
            case xcodeVersions
        }

        public enum Include: String, Codable, CaseIterable {
            case xcodeVersions
        }

        public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
            case macOsVersions
            case name
            case testDestinations
            case version
        }
    }
}
