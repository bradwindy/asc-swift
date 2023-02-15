// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaAppReviewSubmission: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case betaAppReviewSubmissions
    }

    public struct Attributes: Codable, Hashable {
        public var betaReviewState: BetaReviewState?
        public var submittedDate: Date?

        public init(betaReviewState: BetaReviewState? = nil, submittedDate: Date? = nil) {
            self.betaReviewState = betaReviewState
            self.submittedDate = submittedDate
        }
    }

    public struct Relationships: Codable, Hashable {
        public var build: Build?

        public struct Build: Codable, Hashable {
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
                    case builds
                }

                public init(type: `Type` = .builds, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(build: Build? = nil) {
            self.build = build
        }
    }

    public init(type: `Type` = .betaAppReviewSubmissions, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
