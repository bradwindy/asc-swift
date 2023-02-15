// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaAppClipInvocationCreateRequest: Codable, Hashable {
    public var data: Data
    public var included: [BetaAppClipInvocationLocalizationInlineCreate]?

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case betaAppClipInvocations
        }

        public struct Attributes: Codable, Hashable {
            public var url: URL

            public init(url: URL) {
                self.url = url
            }
        }

        public struct Relationships: Codable, Hashable {
            public var buildBundle: BuildBundle
            public var betaAppClipInvocationLocalizations: BetaAppClipInvocationLocalizations

            public struct BuildBundle: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case buildBundles
                    }

                    public init(type: `Type` = .buildBundles, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public struct BetaAppClipInvocationLocalizations: Codable, Hashable {
                public var data: [Datum]

                public struct Datum: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case betaAppClipInvocationLocalizations
                    }

                    public init(type: `Type` = .betaAppClipInvocationLocalizations, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: [Datum]) {
                    self.data = data
                }
            }

            public init(buildBundle: BuildBundle, betaAppClipInvocationLocalizations: BetaAppClipInvocationLocalizations) {
                self.buildBundle = buildBundle
                self.betaAppClipInvocationLocalizations = betaAppClipInvocationLocalizations
            }
        }

        public init(type: `Type` = .betaAppClipInvocations, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }
    }

    public init(data: Data, included: [BetaAppClipInvocationLocalizationInlineCreate]? = nil) {
        self.data = data
        self.included = included
    }
}
