// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.PromotedPurchases {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/promotedPurchases/{id}`
        public let path: String

        public func get(fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, include: [Include]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, limitPromotionImages: Int? = nil) -> Request<_Specification.PromotedPurchaseResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsPromotedPurchases, include, fieldsPromotedPurchaseImages, limitPromotionImages), id: "promotedPurchases-get_instance")
        }

        private func makeGetQuery(_ fieldsPromotedPurchases: [FieldsPromotedPurchases]?, _ include: [Include]?, _ fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?, _ limitPromotionImages: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
            encoder.encode(limitPromotionImages, forKey: "limit[promotionImages]")
            return encoder.items
        }

        public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
            case app
            case enabled
            case inAppPurchaseV2
            case promotionImages
            case state
            case subscription
            case visibleForAllUsers
        }

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
            case promotionImages
            case subscription
        }

        public enum FieldsPromotedPurchaseImages: String, Codable, CaseIterable {
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case promotedPurchase
            case sourceFileChecksum
            case state
            case uploadOperations
            case uploaded
        }

        public func patch(_ body: _Specification.PromotedPurchaseUpdateRequest) -> Request<_Specification.PromotedPurchaseResponse> {
            Request(path: path, method: "PATCH", body: body, id: "promotedPurchases-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "promotedPurchases-delete_instance")
        }
    }
}
