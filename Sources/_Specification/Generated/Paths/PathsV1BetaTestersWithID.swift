// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaTesters {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaTesters/{id}`
        public let path: String

        public func get(fieldsBetaTesters: [FieldsBetaTesters]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, limitApps: Int? = nil, limitBetaGroups: Int? = nil, limitBuilds: Int? = nil) -> Request<_Specification.BetaTesterResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsBetaTesters, include, fieldsApps, fieldsBuilds, fieldsBetaGroups, limitApps, limitBetaGroups, limitBuilds), id: "betaTesters-get_instance")
        }

        private func makeGetQuery(_ fieldsBetaTesters: [FieldsBetaTesters]?, _ include: [Include]?, _ fieldsApps: [FieldsApps]?, _ fieldsBuilds: [FieldsBuilds]?, _ fieldsBetaGroups: [FieldsBetaGroups]?, _ limitApps: Int?, _ limitBetaGroups: Int?, _ limitBuilds: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
            encoder.encode(limitApps, forKey: "limit[apps]")
            encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            return encoder.items
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

        public enum Include: String, Codable, CaseIterable {
            case apps
            case betaGroups
            case builds
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

        public var delete: Request<Void> {
            Request(method: "DELETE", url: path, id: "betaTesters-delete_instance")
        }
    }
}
