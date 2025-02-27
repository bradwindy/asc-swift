// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Profiles {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/profiles/{id}`
        public let path: String

        public func get(fieldsProfiles: [FieldsProfiles]? = nil, include: [Include]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, fieldsDevices: [FieldsDevices]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil) -> Request<_Specification.ProfileResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsProfiles, include, fieldsCertificates, fieldsDevices, fieldsBundleIDs, limitCertificates, limitDevices), id: "profiles-get_instance")
        }

        private func makeGetQuery(_ fieldsProfiles: [FieldsProfiles]?, _ include: [Include]?, _ fieldsCertificates: [FieldsCertificates]?, _ fieldsDevices: [FieldsDevices]?, _ fieldsBundleIDs: [FieldsBundleIDs]?, _ limitCertificates: Int?, _ limitDevices: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
            encoder.encode(fieldsDevices, forKey: "fields[devices]")
            encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
            encoder.encode(limitCertificates, forKey: "limit[certificates]")
            encoder.encode(limitDevices, forKey: "limit[devices]")
            return encoder.items
        }

        public enum FieldsProfiles: String, Codable, CaseIterable {
            case bundleID = "bundleId"
            case certificates
            case createdDate
            case devices
            case expirationDate
            case name
            case platform
            case profileContent
            case profileState
            case profileType
            case uuid
        }

        public enum Include: String, Codable, CaseIterable {
            case bundleID = "bundleId"
            case certificates
            case devices
        }

        public enum FieldsCertificates: String, Codable, CaseIterable {
            case certificateContent
            case certificateType
            case csrContent
            case displayName
            case expirationDate
            case name
            case platform
            case serialNumber
        }

        public enum FieldsDevices: String, Codable, CaseIterable {
            case addedDate
            case deviceClass
            case model
            case name
            case platform
            case status
            case udid
        }

        public enum FieldsBundleIDs: String, Codable, CaseIterable {
            case app
            case bundleIDCapabilities = "bundleIdCapabilities"
            case identifier
            case name
            case platform
            case profiles
            case seedID = "seedId"
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "profiles-delete_instance")
        }
    }
}
