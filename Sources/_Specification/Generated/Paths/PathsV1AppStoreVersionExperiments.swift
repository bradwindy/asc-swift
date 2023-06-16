// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var appStoreVersionExperiments: AppStoreVersionExperiments {
        AppStoreVersionExperiments(path: path + "/appStoreVersionExperiments")
    }

    public struct AppStoreVersionExperiments {
        /// Path: `/v1/appStoreVersionExperiments`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func post(_ body: _Specification.AppStoreVersionExperimentCreateRequest) -> Request<_Specification.AppStoreVersionExperimentResponse> {
            Request(method: "POST", url: path, body: body, id: "appStoreVersionExperiments-create_instance")
        }
    }
}
