// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var appPricePoints: AppPricePoints {
        AppPricePoints(path: path + "/appPricePoints")
    }

    public struct AppPricePoints {
        /// Path: `/v1/apps/{id}/appPricePoints`
        public let path: String

        public func get(filterTerritory: [String]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppPricePointsV3Response> {
            Request(method: "GET", url: path, query: makeGetQuery(filterTerritory, fieldsAppPricePoints, fieldsApps, fieldsTerritories, limit, include), id: "apps-appPricePoints-get_to_many_related")
        }

        private func makeGetQuery(_ filterTerritory: [String]?, _ fieldsAppPricePoints: [FieldsAppPricePoints]?, _ fieldsApps: [FieldsApps]?, _ fieldsTerritories: [FieldsTerritories]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsTerritories, forKey: "fields[territories]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppPricePoints: String, Codable, CaseIterable {
            case app
            case customerPrice
            case equalizations
            case proceeds
            case territory
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

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case territory
        }
    }
}
