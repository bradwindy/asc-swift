// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var bundleIDs: BundleIDs {
        BundleIDs(path: path + "/bundleIds")
    }

    public struct BundleIDs {
        /// Path: `/v1/bundleIds`
        public let path: String

        public func get(filterIdentifier: [String]? = nil, filterName: [String]? = nil, filterPlatform: [FilterPlatform]? = nil, filterSeedID: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]? = nil, fieldsProfiles: [FieldsProfiles]? = nil, fieldsApps: [FieldsApps]? = nil, limitBundleIDCapabilities: Int? = nil, limitProfiles: Int? = nil) -> Request<_Specification.BundleIDsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterIdentifier, filterName, filterPlatform, filterSeedID, filterID, sort, fieldsBundleIDs, limit, include, fieldsBundleIDCapabilities, fieldsProfiles, fieldsApps, limitBundleIDCapabilities, limitProfiles), id: "bundleIds-get_collection")
        }

        private func makeGetQuery(_ filterIdentifier: [String]?, _ filterName: [String]?, _ filterPlatform: [FilterPlatform]?, _ filterSeedID: [String]?, _ filterID: [String]?, _ sort: [Sort]?, _ fieldsBundleIDs: [FieldsBundleIDs]?, _ limit: Int?, _ include: [Include]?, _ fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]?, _ fieldsProfiles: [FieldsProfiles]?, _ fieldsApps: [FieldsApps]?, _ limitBundleIDCapabilities: Int?, _ limitProfiles: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterIdentifier, forKey: "filter[identifier]")
            encoder.encode(filterName, forKey: "filter[name]")
            encoder.encode(filterPlatform, forKey: "filter[platform]")
            encoder.encode(filterSeedID, forKey: "filter[seedId]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBundleIDCapabilities, forKey: "fields[bundleIdCapabilities]")
            encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limitBundleIDCapabilities, forKey: "limit[bundleIdCapabilities]")
            encoder.encode(limitProfiles, forKey: "limit[profiles]")
            return encoder.items
        }

        public enum FilterPlatform: String, Codable, CaseIterable {
            case ios = "IOS"
            case macOs = "MAC_OS"
        }

        public enum Sort: String, Codable, CaseIterable {
            case id
            case minusid = "-id"
            case identifier
            case minusidentifier = "-identifier"
            case name
            case minusname = "-name"
            case platform
            case minusplatform = "-platform"
            case seedID = "seedId"
            case minusseedID = "-seedId"
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
            case appAvailability
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
            case appPricePoints
            case appPriceSchedule
            case appStoreVersionExperimentsV2
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

        public func post(_ body: _Specification.BundleIDCreateRequest) -> Request<_Specification.BundleIDResponse> {
            Request(path: path, method: "POST", body: body, id: "bundleIds-create_instance")
        }
    }
}
