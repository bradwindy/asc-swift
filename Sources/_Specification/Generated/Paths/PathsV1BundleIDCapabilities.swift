// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var bundleIDCapabilities: BundleIDCapabilities {
        BundleIDCapabilities(path: path + "/bundleIdCapabilities")
    }

    public struct BundleIDCapabilities {
        /// Path: `/v1/bundleIdCapabilities`
        public let path: String

        public func post(_ body: _Specification.BundleIDCapabilityCreateRequest) -> Request<_Specification.BundleIDCapabilityResponse> {
            Request(path: path, method: "POST", body: body, id: "bundleIdCapabilities-create_instance")
        }
    }
}
