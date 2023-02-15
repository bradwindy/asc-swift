// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipAppStoreReviewDetailUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case appClipAppStoreReviewDetails
        }

        public struct Attributes: Codable, Hashable {
            public var invocationURLs: [URL]?

            public init(invocationURLs: [URL]? = nil) {
                self.invocationURLs = invocationURLs
            }

            private enum CodingKeys: String, CodingKey {
                case invocationURLs = "invocationUrls"
            }
        }

        public init(type: `Type` = .appClipAppStoreReviewDetails, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
