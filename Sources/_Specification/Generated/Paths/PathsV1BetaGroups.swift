// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var betaGroups: BetaGroups {
        BetaGroups(path: path + "/betaGroups")
    }

    public struct BetaGroups {
        /// Path: `/v1/betaGroups`
        public let path: String

        public func get(filterIsInternalGroup: [String]? = nil, filterName: [String]? = nil, filterPublicLink: [String]? = nil, filterPublicLinkEnabled: [String]? = nil, filterPublicLinkLimitEnabled: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsBetaTesters: [FieldsBetaTesters]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limitBetaTesters: Int? = nil, limitBuilds: Int? = nil) -> Request<_Specification.BetaGroupsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterIsInternalGroup, filterName, filterPublicLink, filterPublicLinkEnabled, filterPublicLinkLimitEnabled, filterApp, filterBuilds, filterID, sort, fieldsBetaGroups, limit, include, fieldsBetaTesters, fieldsApps, fieldsBuilds, limitBetaTesters, limitBuilds), id: "betaGroups-get_collection")
        }

        private func makeGetQuery(_ filterIsInternalGroup: [String]?, _ filterName: [String]?, _ filterPublicLink: [String]?, _ filterPublicLinkEnabled: [String]?, _ filterPublicLinkLimitEnabled: [String]?, _ filterApp: [String]?, _ filterBuilds: [String]?, _ filterID: [String]?, _ sort: [Sort]?, _ fieldsBetaGroups: [FieldsBetaGroups]?, _ limit: Int?, _ include: [Include]?, _ fieldsBetaTesters: [FieldsBetaTesters]?, _ fieldsApps: [FieldsApps]?, _ fieldsBuilds: [FieldsBuilds]?, _ limitBetaTesters: Int?, _ limitBuilds: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterIsInternalGroup, forKey: "filter[isInternalGroup]")
            encoder.encode(filterName, forKey: "filter[name]")
            encoder.encode(filterPublicLink, forKey: "filter[publicLink]")
            encoder.encode(filterPublicLinkEnabled, forKey: "filter[publicLinkEnabled]")
            encoder.encode(filterPublicLinkLimitEnabled, forKey: "filter[publicLinkLimitEnabled]")
            encoder.encode(filterApp, forKey: "filter[app]")
            encoder.encode(filterBuilds, forKey: "filter[builds]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(limitBetaTesters, forKey: "limit[betaTesters]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            return encoder.items
        }

        public enum Sort: String, Codable, CaseIterable {
            case createdDate
            case minuscreatedDate = "-createdDate"
            case name
            case minusname = "-name"
            case publicLinkEnabled
            case minuspublicLinkEnabled = "-publicLinkEnabled"
            case publicLinkLimit
            case minuspublicLinkLimit = "-publicLinkLimit"
        }

        public enum FieldsBetaGroups: String, Codable, CaseIterable {
            case app
            case betaTesters
            case builds
            case createdDate
            case feedbackEnabled
            case hasAccessToAllBuilds
            case iosBuildsAvailableForAppleSiliconMac
            case isInternalGroup
            case name
            case publicLink
            case publicLinkEnabled
            case publicLinkID = "publicLinkId"
            case publicLinkLimit
            case publicLinkLimitEnabled
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case betaTesters
            case builds
        }

        public enum FieldsBetaTesters: String, Codable, CaseIterable {
            case apps
            case betaGroups
            case builds
            case email
            case firstName
            case inviteType
            case lastName
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

        public enum FieldsBuilds: String, Codable, CaseIterable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version
        }

        public func post(_ body: _Specification.BetaGroupCreateRequest) -> Request<_Specification.BetaGroupResponse> {
            Request(path: path, method: "POST", body: body, id: "betaGroups-create_instance")
        }
    }
}
