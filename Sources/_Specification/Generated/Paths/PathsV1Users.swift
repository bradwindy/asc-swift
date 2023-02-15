// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var users: Users {
        Users(path: path + "/users")
    }

    public struct Users {
        /// Path: `/v1/users`
        public let path: String

        public func get(filterRoles: [FilterRoles]? = nil, filterUsername: [String]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort]? = nil, fieldsUsers: [FieldsUsers]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, limitVisibleApps: Int? = nil) -> Request<_Specification.UsersResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterRoles, filterUsername, filterVisibleApps, sort, fieldsUsers, limit, include, fieldsApps, limitVisibleApps), id: "users-get_collection")
        }

        private func makeGetQuery(_ filterRoles: [FilterRoles]?, _ filterUsername: [String]?, _ filterVisibleApps: [String]?, _ sort: [Sort]?, _ fieldsUsers: [FieldsUsers]?, _ limit: Int?, _ include: [Include]?, _ fieldsApps: [FieldsApps]?, _ limitVisibleApps: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterRoles, forKey: "filter[roles]")
            encoder.encode(filterUsername, forKey: "filter[username]")
            encoder.encode(filterVisibleApps, forKey: "filter[visibleApps]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsUsers, forKey: "fields[users]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limitVisibleApps, forKey: "limit[visibleApps]")
            return encoder.items
        }

        public enum FilterRoles: String, Codable, CaseIterable {
            case admin = "ADMIN"
            case finance = "FINANCE"
            case accountHolder = "ACCOUNT_HOLDER"
            case sales = "SALES"
            case marketing = "MARKETING"
            case appManager = "APP_MANAGER"
            case developer = "DEVELOPER"
            case accessToReports = "ACCESS_TO_REPORTS"
            case customerSupport = "CUSTOMER_SUPPORT"
            case imageManager = "IMAGE_MANAGER"
            case createApps = "CREATE_APPS"
            case cloudManagedDeveloperID = "CLOUD_MANAGED_DEVELOPER_ID"
            case cloudManagedAppDistribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
        }

        public enum Sort: String, Codable, CaseIterable {
            case lastName
            case minuslastName = "-lastName"
            case username
            case minususername = "-username"
        }

        public enum FieldsUsers: String, Codable, CaseIterable {
            case allAppsVisible
            case firstName
            case lastName
            case provisioningAllowed
            case roles
            case username
            case visibleApps
        }

        public enum Include: String, Codable, CaseIterable {
            case visibleApps
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
    }
}
