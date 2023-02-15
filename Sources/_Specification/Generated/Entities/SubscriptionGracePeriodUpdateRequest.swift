// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct SubscriptionGracePeriodUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case subscriptionGracePeriods
        }

        public struct Attributes: Codable, Hashable {
            public var isOptIn: Bool?
            public var isSandboxOptIn: Bool?
            public var duration: SubscriptionGracePeriodDuration?
            public var renewalType: RenewalType?

            public enum RenewalType: String, Codable, CaseIterable {
                case allRenewals = "ALL_RENEWALS"
                case paidToPaidOnly = "PAID_TO_PAID_ONLY"
            }

            public init(isOptIn: Bool? = nil, isSandboxOptIn: Bool? = nil, duration: SubscriptionGracePeriodDuration? = nil, renewalType: RenewalType? = nil) {
                self.isOptIn = isOptIn
                self.isSandboxOptIn = isSandboxOptIn
                self.duration = duration
                self.renewalType = renewalType
            }

            private enum CodingKeys: String, CodingKey {
                case isOptIn = "optIn"
                case isSandboxOptIn = "sandboxOptIn"
                case duration
                case renewalType
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
