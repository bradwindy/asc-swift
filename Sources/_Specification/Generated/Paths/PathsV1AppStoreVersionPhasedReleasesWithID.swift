// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersionPhasedReleases {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appStoreVersionPhasedReleases/{id}`
        public let path: String

        public func patch(_ body: _Specification.AppStoreVersionPhasedReleaseUpdateRequest) -> Request<_Specification.AppStoreVersionPhasedReleaseResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appStoreVersionPhasedReleases-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appStoreVersionPhasedReleases-delete_instance")
        }
    }
}
