// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2.InAppPurchases.WithID {
    public var appStoreReviewScreenshot: AppStoreReviewScreenshot {
        AppStoreReviewScreenshot(path: path + "/appStoreReviewScreenshot")
    }

    public struct AppStoreReviewScreenshot {
        /// Path: `/v2/inAppPurchases/{id}/appStoreReviewScreenshot`
        public let path: String

        public func get(fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, include: [Include]? = nil) -> Request<_Specification.InAppPurchaseAppStoreReviewScreenshotResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsInAppPurchaseAppStoreReviewScreenshots, fieldsInAppPurchases, include), id: "inAppPurchases-appStoreReviewScreenshot-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]?, _ fieldsInAppPurchases: [FieldsInAppPurchases]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseAppStoreReviewScreenshots, forKey: "fields[inAppPurchaseAppStoreReviewScreenshots]")
            encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchaseAppStoreReviewScreenshots: String, Codable, CaseIterable {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case inAppPurchaseV2
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum FieldsInAppPurchases: String, Codable, CaseIterable {
            case app
            case appStoreReviewScreenshot
            case availableInAllTerritories
            case content
            case contentHosting
            case familySharable
            case iapPriceSchedule
            case inAppPurchaseAvailability
            case inAppPurchaseLocalizations
            case inAppPurchaseType
            case name
            case pricePoints
            case productID = "productId"
            case promotedPurchase
            case reviewNote
            case state
        }

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
        }
    }
}
