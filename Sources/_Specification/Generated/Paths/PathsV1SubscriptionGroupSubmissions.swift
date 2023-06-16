// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionGroupSubmissions: SubscriptionGroupSubmissions {
        SubscriptionGroupSubmissions(path: path + "/subscriptionGroupSubmissions")
    }

    public struct SubscriptionGroupSubmissions {
        /// Path: `/v1/subscriptionGroupSubmissions`
        public let path: String

        public func post(_ body: _Specification.SubscriptionGroupSubmissionCreateRequest) -> Request<_Specification.SubscriptionGroupSubmissionResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionGroupSubmissions-create_instance")
        }
    }
}
