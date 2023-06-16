// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.BetaLicenseAgreements {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaLicenseAgreements/{id}`
        public let path: String

        public func get(fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) -> Request<_Specification.BetaLicenseAgreementResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsBetaLicenseAgreements, include, fieldsApps), id: "betaLicenseAgreements-get_instance")
        }

        private func makeGetQuery(_ fieldsBetaLicenseAgreements: [FieldsBetaLicenseAgreements]?, _ include: [Include]?, _ fieldsApps: [FieldsApps]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsBetaLicenseAgreements, forKey: "fields[betaLicenseAgreements]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            return encoder.items
        }

        public enum FieldsBetaLicenseAgreements: String, Codable, CaseIterable {
            case agreementText
            case app
        }

        public enum Include: String, Codable, CaseIterable {
            case app
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

        public func patch(_ body: _Specification.BetaLicenseAgreementUpdateRequest) -> Request<_Specification.BetaLicenseAgreementResponse> {
            Request(method: "PATCH", url: path, body: body, id: "betaLicenseAgreements-update_instance")
        }
    }
}
