// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BetaTesterInvitation: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case betaTesterInvitations
    }

    public init(type: `Type` = .betaTesterInvitations, id: String, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.links = links
    }
}
