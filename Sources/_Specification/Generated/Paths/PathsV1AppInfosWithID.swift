// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppInfos {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appInfos/{id}`
        public let path: String

        public func get(fieldsAppInfos: [FieldsAppInfos]? = nil, include: [Include]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, fieldsAppCategories: [FieldsAppCategories]? = nil, limitAppInfoLocalizations: Int? = nil) -> Request<_Specification.AppInfoResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppInfos, include, fieldsAgeRatingDeclarations, fieldsAppInfoLocalizations, fieldsAppCategories, limitAppInfoLocalizations), id: "appInfos-get_instance")
        }

        private func makeGetQuery(_ fieldsAppInfos: [FieldsAppInfos]?, _ include: [Include]?, _ fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?, _ fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?, _ fieldsAppCategories: [FieldsAppCategories]?, _ limitAppInfoLocalizations: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
            encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
            encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
            encoder.encode(limitAppInfoLocalizations, forKey: "limit[appInfoLocalizations]")
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

        public enum Include: String, Codable, CaseIterable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
        }

        public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
            case alcoholTobaccoOrDrugUseOrReferences
            case contests
            case gambling
            case gamblingAndContests
            case gamblingSimulated
            case horrorOrFearThemes
            case kidsAgeBand
            case matureOrSuggestiveThemes
            case medicalOrTreatmentInformation
            case profanityOrCrudeHumor
            case seventeenPlus
            case sexualContentGraphicAndNudity
            case sexualContentOrNudity
            case unrestrictedWebAccess
            case violenceCartoonOrFantasy
            case violenceRealistic
            case violenceRealisticProlongedGraphicOrSadistic
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

        public enum FieldsAppCategories: String, Codable, CaseIterable {
            case parent
            case platforms
            case subcategories
        }

        public func patch(_ body: _Specification.AppInfoUpdateRequest) -> Request<_Specification.AppInfoResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appInfos-update_instance")
        }
    }
}
