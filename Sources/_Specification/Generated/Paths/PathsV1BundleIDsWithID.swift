// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BundleIDs {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/bundleIds/{id}`
        public let path: String

        public func get(fieldsBundleIDs: [FieldsBundleIDs]? = nil, include: [Include]? = nil, fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]? = nil, fieldsProfiles: [FieldsProfiles]? = nil, fieldsApps: [FieldsApps]? = nil, limitBundleIDCapabilities: Int? = nil, limitProfiles: Int? = nil) -> Request<_Specification.BundleIDResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBundleIDs, include, fieldsBundleIDCapabilities, fieldsProfiles, fieldsApps, limitBundleIDCapabilities, limitProfiles), id: "bundleIds-get_instance")
        }

        private func makeGetQuery(_ fieldsBundleIDs: [FieldsBundleIDs]?, _ include: [Include]?, _ fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]?, _ fieldsProfiles: [FieldsProfiles]?, _ fieldsApps: [FieldsApps]?, _ limitBundleIDCapabilities: Int?, _ limitProfiles: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBundleIDCapabilities, forKey: "fields[bundleIdCapabilities]")
            encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limitBundleIDCapabilities, forKey: "limit[bundleIdCapabilities]")
            encoder.encode(limitProfiles, forKey: "limit[profiles]")
            return encoder.items
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

        public enum Include: String, Codable, CaseIterable {
            case app
            case bundleIDCapabilities = "bundleIdCapabilities"
            case profiles
        }

        public enum FieldsBundleIDCapabilities: String, Codable, CaseIterable {
            case bundleID = "bundleId"
            case capabilityType
            case settings
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

        public enum FieldsApps: String, Codable, CaseIterable {
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
            case appStoreVersions
            case availableInNewTerritories
            case availableTerritories
            case betaAppLocalizations
            case betaAppReviewDetail
            case betaGroups
            case betaLicenseAgreement
            case betaTesters
            case builds
            case bundleID = "bundleId"
            case ciProduct
            case contentRightsDeclaration
            case customerReviews
            case endUserLicenseAgreement
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case isOrEverWasMadeForKids
            case name
            case perfPowerMetrics
            case preOrder
            case preReleaseVersions
            case pricePoints
            case prices
            case primaryLocale
            case promotedPurchases
            case reviewSubmissions
            case sku
            case subscriptionGracePeriod
            case subscriptionGroups
            case subscriptionStatusURL = "subscriptionStatusUrl"
            case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
            case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
            case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
        }

        public func patch(_ body: _Specification.BundleIDUpdateRequest) -> Request<_Specification.BundleIDResponse> {
            Request(path: path, method: "PATCH", body: body, id: "bundleIds-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "bundleIds-delete_instance")
        }
    }
}
