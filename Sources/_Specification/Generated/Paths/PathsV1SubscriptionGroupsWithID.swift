// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.SubscriptionGroups {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionGroups/{id}`
        public let path: String

        public func get(fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, include: [Include]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, limitSubscriptionGroupLocalizations: Int? = nil, limitSubscriptions: Int? = nil) -> Request<_Specification.SubscriptionGroupResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionGroups, include, fieldsSubscriptions, fieldsSubscriptionGroupLocalizations, limitSubscriptionGroupLocalizations, limitSubscriptions), id: "subscriptionGroups-get_instance")
        }

        private func makeGetQuery(_ fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?, _ include: [Include]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?, _ limitSubscriptionGroupLocalizations: Int?, _ limitSubscriptions: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
            encoder.encode(limitSubscriptionGroupLocalizations, forKey: "limit[subscriptionGroupLocalizations]")
            encoder.encode(limitSubscriptions, forKey: "limit[subscriptions]")
            return encoder.items
        }

        public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
            case app
            case referenceName
            case subscriptionGroupLocalizations
            case subscriptions
        }

        public enum Include: String, Codable, CaseIterable {
            case subscriptionGroupLocalizations
            case subscriptions
        }

        public enum FieldsSubscriptions: String, Codable, CaseIterable {
            case appStoreReviewScreenshot
            case availableInAllTerritories
            case familySharable
            case group
            case groupLevel
            case introductoryOffers
            case name
            case offerCodes
            case pricePoints
            case prices
            case productID = "productId"
            case promotedPurchase
            case promotionalOffers
            case reviewNote
            case state
            case subscriptionLocalizations
            case subscriptionPeriod
        }

        public enum FieldsSubscriptionGroupLocalizations: String, Codable, CaseIterable {
            case customAppName
            case locale
            case name
            case state
            case subscriptionGroup
        }

        public func patch(_ body: _Specification.SubscriptionGroupUpdateRequest) -> Request<_Specification.SubscriptionGroupResponse> {
            Request(path: path, method: "PATCH", body: body, id: "subscriptionGroups-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "subscriptionGroups-delete_instance")
        }
    }
}
