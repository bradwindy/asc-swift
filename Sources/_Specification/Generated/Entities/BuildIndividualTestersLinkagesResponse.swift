// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BuildIndividualTestersLinkagesResponse: Codable, Hashable {
    public var data: [Datum]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public struct Datum: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String

        public enum `Type`: String, Codable, CaseIterable {
            case betaTesters
        }

        public init(type: `Type` = .betaTesters, id: String) {
            self.type = type
            self.id = id
        }
    }

    public init(data: [Datum], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }
}
