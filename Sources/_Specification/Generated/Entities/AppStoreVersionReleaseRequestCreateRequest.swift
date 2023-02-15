// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionReleaseRequestCreateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case appStoreVersionReleaseRequests
        }

        public struct Relationships: Codable, Hashable {
            public var appStoreVersion: AppStoreVersion

            public struct AppStoreVersion: Codable, Hashable {
                public var data: Data

                public struct Data: Codable, Hashable, Identifiable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersions
                    }

                    public init(type: `Type` = .appStoreVersions, id: String) {
                        self.type = type
                        self.id = id
                    }
                }

                public init(data: Data) {
                    self.data = data
                }
            }

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }
        }

        public init(type: `Type` = .appStoreVersionReleaseRequests, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
