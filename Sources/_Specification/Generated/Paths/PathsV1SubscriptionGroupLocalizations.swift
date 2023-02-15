// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionGroupLocalizations: SubscriptionGroupLocalizations {
        SubscriptionGroupLocalizations(path: path + "/subscriptionGroupLocalizations")
    }

    public struct SubscriptionGroupLocalizations {
        /// Path: `/v1/subscriptionGroupLocalizations`
        public let path: String

        public func post(_ body: _Specification.SubscriptionGroupLocalizationCreateRequest) -> Request<_Specification.SubscriptionGroupLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionGroupLocalizations-create_instance")
        }
    }
}
