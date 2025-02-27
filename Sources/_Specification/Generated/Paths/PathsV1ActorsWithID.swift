// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Actors {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/actors/{id}`
        public let path: String

        public func get(fieldsActors: [FieldsActors]? = nil) -> Request<_Specification.ActorResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsActors), id: "actors-get_instance")
        }

        private func makeGetQuery(_ fieldsActors: [FieldsActors]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsActors, forKey: "fields[actors]", explode: false)
            return encoder.items
        }

        public enum FieldsActors: String, Codable, CaseIterable {
            case actorType
            case apiKeyID = "apiKeyId"
            case userEmail
            case userFirstName
            case userLastName
        }
    }
}
