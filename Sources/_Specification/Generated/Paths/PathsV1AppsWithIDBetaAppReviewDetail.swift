// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.Apps.WithID {
    public var betaAppReviewDetail: BetaAppReviewDetail {
        BetaAppReviewDetail(path: path + "/betaAppReviewDetail")
    }

    public struct BetaAppReviewDetail {
        /// Path: `/v1/apps/{id}/betaAppReviewDetail`
        public let path: String

        public func get(fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil) -> Request<_Specification.BetaAppReviewDetailResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaAppReviewDetails), id: "apps-betaAppReviewDetail-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]", explode: false)
            return encoder.items
        }

        public enum FieldsBetaAppReviewDetails: String, Codable, CaseIterable {
            case app
            case contactEmail
            case contactFirstName
            case contactLastName
            case contactPhone
            case demoAccountName
            case demoAccountPassword
            case demoAccountRequired
            case notes
        }
    }
}
