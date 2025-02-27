// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppEncryptionDeclarations.WithID.Relationships {
    public var builds: Builds {
        Builds(path: path + "/builds")
    }

    public struct Builds {
        /// Path: `/v1/appEncryptionDeclarations/{id}/relationships/builds`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func post(_ body: _Specification.AppEncryptionDeclarationBuildsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "POST", body: body, id: "appEncryptionDeclarations-builds-create_to_many_relationship")
        }
    }
}
