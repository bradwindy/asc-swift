// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiBuildRuns.WithID {
    public var builds: Builds {
        Builds(path: path + "/builds")
    }

    public struct Builds {
        /// Path: `/v1/ciBuildRuns/{id}/builds`
        public let path: String

        public func get(filterBetaAppReviewSubmissionBetaReviewState: [FilterBetaAppReviewSubmissionBetaReviewState]? = nil, filterBuildAudienceType: [FilterBuildAudienceType]? = nil, filterExpired: [String]? = nil, filterPreReleaseVersionPlatform: [FilterPreReleaseVersionPlatform]? = nil, filterPreReleaseVersionVersion: [String]? = nil, filterProcessingState: [FilterProcessingState]? = nil, filterUsesNonExemptEncryption: [String]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterAppStoreVersion: [String]? = nil, filterBetaGroups: [String]? = nil, filterPreReleaseVersion: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsBuildBundles: [FieldsBuildBundles]? = nil, fieldsBuildIcons: [FieldsBuildIcons]? = nil, fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails]? = nil, fieldsBetaTesters: [FieldsBetaTesters]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsBetaGroups: [FieldsBetaGroups]? = nil, limit: Int? = nil, limitIndividualTesters: Int? = nil, limitBetaGroups: Int? = nil, limitBetaBuildLocalizations: Int? = nil, limitIcons: Int? = nil, limitBuildBundles: Int? = nil, include: [Include]? = nil) -> Request<_Specification.BuildsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterBetaAppReviewSubmissionBetaReviewState, filterBuildAudienceType, filterExpired, filterPreReleaseVersionPlatform, filterPreReleaseVersionVersion, filterProcessingState, filterUsesNonExemptEncryption, filterVersion, filterApp, filterAppStoreVersion, filterBetaGroups, filterPreReleaseVersion, filterID, sort, fieldsBuildBundles, fieldsBuildIcons, fieldsBetaAppReviewSubmissions, fieldsBuildBetaDetails, fieldsBetaTesters, fieldsPreReleaseVersions, fieldsBetaBuildLocalizations, fieldsAppStoreVersions, fieldsAppEncryptionDeclarations, fieldsApps, fieldsBuilds, fieldsBetaGroups, limit, limitIndividualTesters, limitBetaGroups, limitBetaBuildLocalizations, limitIcons, limitBuildBundles, include), id: "ciBuildRuns-builds-get_to_many_related")
        }

        private func makeGetQuery(_ filterBetaAppReviewSubmissionBetaReviewState: [FilterBetaAppReviewSubmissionBetaReviewState]?, _ filterBuildAudienceType: [FilterBuildAudienceType]?, _ filterExpired: [String]?, _ filterPreReleaseVersionPlatform: [FilterPreReleaseVersionPlatform]?, _ filterPreReleaseVersionVersion: [String]?, _ filterProcessingState: [FilterProcessingState]?, _ filterUsesNonExemptEncryption: [String]?, _ filterVersion: [String]?, _ filterApp: [String]?, _ filterAppStoreVersion: [String]?, _ filterBetaGroups: [String]?, _ filterPreReleaseVersion: [String]?, _ filterID: [String]?, _ sort: [Sort]?, _ fieldsBuildBundles: [FieldsBuildBundles]?, _ fieldsBuildIcons: [FieldsBuildIcons]?, _ fieldsBetaAppReviewSubmissions: [FieldsBetaAppReviewSubmissions]?, _ fieldsBuildBetaDetails: [FieldsBuildBetaDetails]?, _ fieldsBetaTesters: [FieldsBetaTesters]?, _ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?, _ fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]?, _ fieldsAppStoreVersions: [FieldsAppStoreVersions]?, _ fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?, _ fieldsApps: [FieldsApps]?, _ fieldsBuilds: [FieldsBuilds]?, _ fieldsBetaGroups: [FieldsBetaGroups]?, _ limit: Int?, _ limitIndividualTesters: Int?, _ limitBetaGroups: Int?, _ limitBetaBuildLocalizations: Int?, _ limitIcons: Int?, _ limitBuildBundles: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterBetaAppReviewSubmissionBetaReviewState, forKey: "filter[betaAppReviewSubmission.betaReviewState]")
            encoder.encode(filterBuildAudienceType, forKey: "filter[buildAudienceType]")
            encoder.encode(filterExpired, forKey: "filter[expired]")
            encoder.encode(filterPreReleaseVersionPlatform, forKey: "filter[preReleaseVersion.platform]")
            encoder.encode(filterPreReleaseVersionVersion, forKey: "filter[preReleaseVersion.version]")
            encoder.encode(filterProcessingState, forKey: "filter[processingState]")
            encoder.encode(filterUsesNonExemptEncryption, forKey: "filter[usesNonExemptEncryption]")
            encoder.encode(filterVersion, forKey: "filter[version]")
            encoder.encode(filterApp, forKey: "filter[app]")
            encoder.encode(filterAppStoreVersion, forKey: "filter[appStoreVersion]")
            encoder.encode(filterBetaGroups, forKey: "filter[betaGroups]")
            encoder.encode(filterPreReleaseVersion, forKey: "filter[preReleaseVersion]")
            encoder.encode(filterID, forKey: "filter[id]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsBuildBundles, forKey: "fields[buildBundles]")
            encoder.encode(fieldsBuildIcons, forKey: "fields[buildIcons]")
            encoder.encode(fieldsBetaAppReviewSubmissions, forKey: "fields[betaAppReviewSubmissions]")
            encoder.encode(fieldsBuildBetaDetails, forKey: "fields[buildBetaDetails]")
            encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]")
            encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
            encoder.encode(fieldsBetaBuildLocalizations, forKey: "fields[betaBuildLocalizations]")
            encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
            encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsBuilds, forKey: "fields[builds]")
            encoder.encode(fieldsBetaGroups, forKey: "fields[betaGroups]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitIndividualTesters, forKey: "limit[individualTesters]")
            encoder.encode(limitBetaGroups, forKey: "limit[betaGroups]")
            encoder.encode(limitBetaBuildLocalizations, forKey: "limit[betaBuildLocalizations]")
            encoder.encode(limitIcons, forKey: "limit[icons]")
            encoder.encode(limitBuildBundles, forKey: "limit[buildBundles]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FilterBetaAppReviewSubmissionBetaReviewState: String, Codable, CaseIterable {
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case rejected = "REJECTED"
            case approved = "APPROVED"
        }

        public enum FilterBuildAudienceType: String, Codable, CaseIterable {
            case internalOnly = "INTERNAL_ONLY"
            case appStoreEligible = "APP_STORE_ELIGIBLE"
        }

        public enum FilterPreReleaseVersionPlatform: String, Codable, CaseIterable {
            case ios = "IOS"
            case macOs = "MAC_OS"
            case tvOs = "TV_OS"
        }

        public enum FilterProcessingState: String, Codable, CaseIterable {
            case processing = "PROCESSING"
            case failed = "FAILED"
            case invalid = "INVALID"
            case valid = "VALID"
        }

        public enum Sort: String, Codable, CaseIterable {
            case preReleaseVersion
            case minuspreReleaseVersion = "-preReleaseVersion"
            case uploadedDate
            case minusuploadedDate = "-uploadedDate"
            case version
            case minusversion = "-version"
        }

        public enum FieldsBuildBundles: String, Codable, CaseIterable {
            case appClipDomainCacheStatus
            case appClipDomainDebugStatus
            case betaAppClipInvocations
            case buildBundleFileSizes
            case bundleID = "bundleId"
            case bundleType
            case dSYMURL = "dSYMUrl"
            case deviceProtocols
            case entitlements
            case fileName
            case hasOnDemandResources
            case hasPrerenderedIcon
            case hasSirikit
            case includesSymbols
            case isIosBuildMacAppStoreCompatible
            case locales
            case platformBuild
            case requiredCapabilities
            case sdkBuild
            case supportedArchitectures
            case usesLocationServices
        }

        public enum FieldsBuildIcons: String, Codable, CaseIterable {
            case iconAsset
            case iconType
            case name
        }

        public enum FieldsBetaAppReviewSubmissions: String, Codable, CaseIterable {
            case betaReviewState
            case build
            case submittedDate
        }

        public enum FieldsBuildBetaDetails: String, Codable, CaseIterable {
            case autoNotifyEnabled
            case build
            case externalBuildState
            case internalBuildState
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

        public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
            case app
            case builds
            case platform
            case version
        }

        public enum FieldsBetaBuildLocalizations: String, Codable, CaseIterable {
            case build
            case locale
            case whatsNew
        }

        public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreState
            case appStoreVersionExperiments
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case build
            case copyright
            case createdDate
            case customerReviews
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case routingAppCoverage
            case versionString
        }

        public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
            case app
            case appDescription
            case appEncryptionDeclarationDocument
            case appEncryptionDeclarationState
            case availableOnFrenchStore
            case builds
            case codeValue
            case containsProprietaryCryptography
            case containsThirdPartyCryptography
            case createdDate
            case documentName
            case documentType
            case documentURL = "documentUrl"
            case exempt
            case platform
            case uploadedDate
            case usesEncryption
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

        public enum Include: String, Codable, CaseIterable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildBetaDetail
            case buildBundles
            case icons
            case individualTesters
            case preReleaseVersion
        }
    }
}
