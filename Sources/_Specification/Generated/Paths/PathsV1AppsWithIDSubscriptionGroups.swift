// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var subscriptionGroups: SubscriptionGroups {
        SubscriptionGroups(path: path + "/subscriptionGroups")
    }

    public struct SubscriptionGroups {
        /// Path: `/v1/apps/{id}/subscriptionGroups`
        public let path: String

        public func get(filterReferenceName: [String]? = nil, filterSubscriptionsState: [FilterSubscriptionsState]? = nil, sort: [Sort]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, limit: Int? = nil, limitSubscriptions: Int? = nil, limitSubscriptionGroupLocalizations: Int? = nil, include: [Include]? = nil) -> Request<_Specification.SubscriptionGroupsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterReferenceName, filterSubscriptionsState, sort, fieldsSubscriptions, fieldsSubscriptionGroups, fieldsSubscriptionGroupLocalizations, limit, limitSubscriptions, limitSubscriptionGroupLocalizations, include), id: "apps-subscriptionGroups-get_to_many_related")
        }

        private func makeGetQuery(_ filterReferenceName: [String]?, _ filterSubscriptionsState: [FilterSubscriptionsState]?, _ sort: [Sort]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?, _ fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?, _ limit: Int?, _ limitSubscriptions: Int?, _ limitSubscriptionGroupLocalizations: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterReferenceName, forKey: "filter[referenceName]")
            encoder.encode(filterSubscriptionsState, forKey: "filter[subscriptions.state]")
            encoder.encode(sort, forKey: "sort")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
            encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitSubscriptions, forKey: "limit[subscriptions]")
            encoder.encode(limitSubscriptionGroupLocalizations, forKey: "limit[subscriptionGroupLocalizations]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FilterSubscriptionsState: String, Codable, CaseIterable {
            case missingMetadata = "MISSING_METADATA"
            case readyToSubmit = "READY_TO_SUBMIT"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
            case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
            case approved = "APPROVED"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case removedFromSale = "REMOVED_FROM_SALE"
            case rejected = "REJECTED"
        }

        public enum Sort: String, Codable, CaseIterable {
            case referenceName
            case minusreferenceName = "-referenceName"
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
            case subscriptionAvailability
            case subscriptionLocalizations
            case subscriptionPeriod
        }

        public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
            case app
            case referenceName
            case subscriptionGroupLocalizations
            case subscriptions
        }

        public enum FieldsSubscriptionGroupLocalizations: String, Codable, CaseIterable {
            case customAppName
            case locale
            case name
            case state
            case subscriptionGroup
        }

        public enum Include: String, Codable, CaseIterable {
            case subscriptionGroupLocalizations
            case subscriptions
        }
    }
}
