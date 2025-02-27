// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppInfos.WithID {
    public var appInfoLocalizations: AppInfoLocalizations {
        AppInfoLocalizations(path: path + "/appInfoLocalizations")
    }

    public struct AppInfoLocalizations {
        /// Path: `/v1/appInfos/{id}/appInfoLocalizations`
        public let path: String

        public func get(filterLocale: [String]? = nil, fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppInfoLocalizationsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(filterLocale, fieldsAppInfos, fieldsAppInfoLocalizations, limit, include), id: "appInfos-appInfoLocalizations-get_to_many_related")
        }

        private func makeGetQuery(_ filterLocale: [String]?, _ fieldsAppInfos: [FieldsAppInfos]?, _ fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?, _ limit: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(filterLocale, forKey: "filter[locale]")
            encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
            encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppInfos: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case appStoreAgeRating
            case appStoreState
            case brazilAgeRating
            case brazilAgeRatingV2
            case kidsAgeBand
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
        }

        public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
            case appInfo
            case locale
            case name
            case privacyChoicesURL = "privacyChoicesUrl"
            case privacyPolicyText
            case privacyPolicyURL = "privacyPolicyUrl"
            case subtitle
        }

        public enum Include: String, Codable, CaseIterable {
            case appInfo
        }
    }
}
