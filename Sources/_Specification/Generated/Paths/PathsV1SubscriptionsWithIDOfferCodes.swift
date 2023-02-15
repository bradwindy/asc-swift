// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Subscriptions.WithID {
    public var offerCodes: OfferCodes {
        OfferCodes(path: path + "/offerCodes")
    }

    public struct OfferCodes {
        /// Path: `/v1/subscriptions/{id}/offerCodes`
        public let path: String

        public func get(filterTerritory: [String]? = nil, fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]? = nil, fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]? = nil, limit: Int? = nil, limitOneTimeUseCodes: Int? = nil, limitCustomCodes: Int? = nil, limitPrices: Int? = nil, include: [Include]? = nil) -> Request<_Specification.SubscriptionOfferCodesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterTerritory, fieldsSubscriptionOfferCodeCustomCodes, fieldsSubscriptionOfferCodes, fieldsSubscriptionOfferCodeOneTimeUseCodes, fieldsSubscriptions, fieldsSubscriptionOfferCodePrices, limit, limitOneTimeUseCodes, limitCustomCodes, limitPrices, include), id: "subscriptions-offerCodes-get_to_many_related")
        }

        private func makeGetQuery(_ filterTerritory: [String]?, _ fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]?, _ fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]?, _ fieldsSubscriptionOfferCodeOneTimeUseCodes: [FieldsSubscriptionOfferCodeOneTimeUseCodes]?, _ fieldsSubscriptions: [FieldsSubscriptions]?, _ fieldsSubscriptionOfferCodePrices: [FieldsSubscriptionOfferCodePrices]?, _ limit: Int?, _ limitOneTimeUseCodes: Int?, _ limitCustomCodes: Int?, _ limitPrices: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterTerritory, forKey: "filter[territory]")
            encoder.encode(fieldsSubscriptionOfferCodeCustomCodes, forKey: "fields[subscriptionOfferCodeCustomCodes]")
            encoder.encode(fieldsSubscriptionOfferCodes, forKey: "fields[subscriptionOfferCodes]")
            encoder.encode(fieldsSubscriptionOfferCodeOneTimeUseCodes, forKey: "fields[subscriptionOfferCodeOneTimeUseCodes]")
            encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
            encoder.encode(fieldsSubscriptionOfferCodePrices, forKey: "fields[subscriptionOfferCodePrices]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitOneTimeUseCodes, forKey: "limit[oneTimeUseCodes]")
            encoder.encode(limitCustomCodes, forKey: "limit[customCodes]")
            encoder.encode(limitPrices, forKey: "limit[prices]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsSubscriptionOfferCodeCustomCodes: String, Codable, CaseIterable {
            case active
            case createdDate
            case customCode
            case expirationDate
            case numberOfCodes
            case offerCode
        }

        public enum FieldsSubscriptionOfferCodes: String, Codable, CaseIterable {
            case active
            case customCodes
            case customerEligibilities
            case duration
            case name
            case numberOfPeriods
            case offerEligibility
            case offerMode
            case oneTimeUseCodes
            case prices
            case subscription
            case totalNumberOfCodes
        }

        public enum FieldsSubscriptionOfferCodeOneTimeUseCodes: String, Codable, CaseIterable {
            case active
            case createdDate
            case expirationDate
            case numberOfCodes
            case offerCode
            case values
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

        public enum FieldsSubscriptionOfferCodePrices: String, Codable, CaseIterable {
            case subscriptionPricePoint
            case territory
        }

        public enum Include: String, Codable, CaseIterable {
            case customCodes
            case oneTimeUseCodes
            case prices
            case subscription
        }
    }
}
