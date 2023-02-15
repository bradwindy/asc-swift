// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ScmGitReference: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case scmGitReferences
    }

    public struct Attributes: Codable, Hashable {
        public var name: String?
        public var canonicalName: String?
        public var isDeleted: Bool?
        public var kind: CiGitRefKind?

        public init(name: String? = nil, canonicalName: String? = nil, isDeleted: Bool? = nil, kind: CiGitRefKind? = nil) {
            self.name = name
            self.canonicalName = canonicalName
            self.isDeleted = isDeleted
            self.kind = kind
        }
    }

    public struct Relationships: Codable, Hashable {
        public var repository: Repository?

        public struct Repository: Codable, Hashable {
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
                    case scmRepositories
                }

                public init(type: `Type` = .scmRepositories, id: String) {
                    self.type = type
                    self.id = id
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }
        }

        public init(repository: Repository? = nil) {
            self.repository = repository
        }
    }

    public init(type: `Type` = .scmGitReferences, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }
}
