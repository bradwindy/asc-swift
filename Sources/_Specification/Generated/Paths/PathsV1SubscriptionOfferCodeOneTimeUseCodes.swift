// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1 {
    public var subscriptionOfferCodeOneTimeUseCodes: SubscriptionOfferCodeOneTimeUseCodes {
        SubscriptionOfferCodeOneTimeUseCodes(path: path + "/subscriptionOfferCodeOneTimeUseCodes")
    }

    public struct SubscriptionOfferCodeOneTimeUseCodes {
        /// Path: `/v1/subscriptionOfferCodeOneTimeUseCodes`
        public let path: String

        public func post(_ body: _Specification.SubscriptionOfferCodeOneTimeUseCodeCreateRequest) -> Request<_Specification.SubscriptionOfferCodeOneTimeUseCodeResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionOfferCodeOneTimeUseCodes-create_instance")
        }
    }
}
