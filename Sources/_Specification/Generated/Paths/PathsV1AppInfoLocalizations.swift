// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appInfoLocalizations: AppInfoLocalizations {
        AppInfoLocalizations(path: path + "/appInfoLocalizations")
    }

    public struct AppInfoLocalizations {
        /// Path: `/v1/appInfoLocalizations`
        public let path: String

        public func post(_ body: _Specification.AppInfoLocalizationCreateRequest) -> Request<_Specification.AppInfoLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "appInfoLocalizations-create_instance")
        }
    }
}
