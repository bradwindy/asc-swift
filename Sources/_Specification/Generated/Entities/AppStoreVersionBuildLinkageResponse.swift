// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppStoreVersionBuildLinkageResponse: Codable, Hashable {
    public var data: Data
    public var links: DocumentLinks

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

    public init(data: Data, links: DocumentLinks) {
        self.data = data
        self.links = links
    }
}
