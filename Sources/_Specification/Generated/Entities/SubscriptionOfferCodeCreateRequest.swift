// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionOfferCodeCreateRequest: Codable, Hashable {
    public var data: Data
    public var included: [SubscriptionOfferCodePriceInlineCreate]?

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case subscriptionOfferCodes
        }

        public struct Attributes: Codable, Hashable {
            public var name: String
            public var customerEligibilities: [SubscriptionCustomerEligibility]
            public var offerEligibility: SubscriptionOfferEligibility
            public var duration: SubscriptionOfferDuration
            public var offerMode: SubscriptionOfferMode
            public var numberOfPeriods: Int

            public init(name: String, customerEligibilities: [SubscriptionCustomerEligibility], offerEligibility: SubscriptionOfferEligibility, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
                self.name = name
                self.customerEligibilities = customerEligibilities
                self.offerEligibility = offerEligibility
                self.duration = duration
                self.offerMode = offerMode
                self.numberOfPeriods = numberOfPeriods
            }
        }

        public struct Relationships: Codable, Hashable {
            public var subscription: Subscription
            public var prices: Prices

            public struct Subscription: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case subscriptions
                    }

                    public init(type: `Type` = .subscriptions, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct Prices: Codable, Hashable {
                public var data: [Datum]

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case subscriptionOfferCodePrices
                    }

                    public init(type: `Type` = .subscriptionOfferCodePrices, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(subscription: Subscription, prices: Prices) {
                self.subscription = subscription
                self.prices = prices
            }
        }

        public init(type: `Type` = .subscriptionOfferCodes, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data, included: [SubscriptionOfferCodePriceInlineCreate]? = nil) {
        self.data = data
        self.included = included
    }
}
