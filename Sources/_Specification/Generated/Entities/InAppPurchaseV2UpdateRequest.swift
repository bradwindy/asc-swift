// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseV2UpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case inAppPurchases
        }

        public struct Attributes: Codable, Hashable {
            public var name: String?
            public var reviewNote: String?
            public var isFamilySharable: Bool?
            public var isAvailableInAllTerritories: Bool?

            public init(name: String? = nil, reviewNote: String? = nil, isFamilySharable: Bool? = nil, isAvailableInAllTerritories: Bool? = nil) {
                self.name = name
                self.reviewNote = reviewNote
                self.isFamilySharable = isFamilySharable
                self.isAvailableInAllTerritories = isAvailableInAllTerritories
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case reviewNote
                case isFamilySharable = "familySharable"
                case isAvailableInAllTerritories = "availableInAllTerritories"
            }
        }

        public init(type: `Type` = .inAppPurchases, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
