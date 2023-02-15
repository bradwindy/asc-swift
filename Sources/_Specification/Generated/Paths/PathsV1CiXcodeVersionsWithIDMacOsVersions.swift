// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiXcodeVersions.WithID {
    public var macOsVersions: MacOsVersions {
        MacOsVersions(path: path + "/macOsVersions")
    }

    public struct MacOsVersions {
        /// Path: `/v1/ciXcodeVersions/{id}/macOsVersions`
        public let path: String

        public func get(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, limitXcodeVersions: Int? = nil, include: [Include]? = nil) -> Request<_Specification.CiMacOsVersionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiXcodeVersions, fieldsCiMacOsVersions, limit, limitXcodeVersions, include), id: "ciXcodeVersions-macOsVersions-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?, _ fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?, _ limit: Int?, _ limitXcodeVersions: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
            encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitXcodeVersions, forKey: "limit[xcodeVersions]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
            case macOsVersions
            case name
            case testDestinations
            case version
        }

        public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
            case name
            case version
            case xcodeVersions
        }

        public enum Include: String, Codable, CaseIterable {
            case xcodeVersions
        }
    }
}
