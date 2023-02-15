// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseSubmission: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case inAppPurchaseSubmissions
    }

    public struct Relationships: Codable, Hashable {
        public var inAppPurchaseV2: InAppPurchaseV2?

        public struct InAppPurchaseV2: Codable, Hashable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable, Hashable {
                public var this: URL?
                public var related: URL?

                public init(this: URL? = nil, related: URL? = nil) {
                    self.this = this
                    self.related = related
                }

                private enum CodingKeys: String, CodingKey {
                    case this = "self"
                    case related
                }
            }

            public struct Data: Codable, Hashable, Identifiable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case inAppPurchases
                }

                public init(type: `Type` = .inAppPurchases, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(inAppPurchaseV2: InAppPurchaseV2? = nil) {
            self.inAppPurchaseV2 = inAppPurchaseV2
        }
    }

    public init(type: `Type` = .inAppPurchaseSubmissions, id: String, relationships: Relationships? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.relationships = relationships
        self.links = links
    }
}
