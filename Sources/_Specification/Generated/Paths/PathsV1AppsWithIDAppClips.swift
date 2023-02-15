// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var appClips: AppClips {
        AppClips(path: path + "/appClips")
    }

    public struct AppClips {
        /// Path: `/v1/apps/{id}/appClips`
        public let path: String

        public func get(filterBundleID: [String]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, limit: Int? = nil, limitAppClipDefaultExperiences: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppClipsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterBundleID, fieldsAppClips, fieldsApps, fieldsAppClipDefaultExperiences, limit, limitAppClipDefaultExperiences, include), id: "apps-appClips-get_to_many_related")
        }

        private func makeGetQuery(_ filterBundleID: [String]?, _ fieldsAppClips: [FieldsAppClips]?, _ fieldsApps: [FieldsApps]?, _ fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?, _ limit: Int?, _ limitAppClipDefaultExperiences: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterBundleID, forKey: "filter[bundleId]")
            encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitAppClipDefaultExperiences, forKey: "limit[appClipDefaultExperiences]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppClips: String, Codable, CaseIterable {
            case app
            case appClipAdvancedExperiences
            case appClipDefaultExperiences
            case bundleID = "bundleId"
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

        public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
            case action
            case appClip
            case appClipAppStoreReviewDetail
            case appClipDefaultExperienceLocalizations
            case appClipDefaultExperienceTemplate
            case releaseWithAppStoreVersion
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case appClipDefaultExperiences
        }
    }
}
