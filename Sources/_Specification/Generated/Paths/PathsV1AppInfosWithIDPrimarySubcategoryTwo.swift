// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppInfos.WithID {
    public var primarySubcategoryTwo: PrimarySubcategoryTwo {
        PrimarySubcategoryTwo(path: path + "/primarySubcategoryTwo")
    }

    public struct PrimarySubcategoryTwo {
        /// Path: `/v1/appInfos/{id}/primarySubcategoryTwo`
        public let path: String

        public func get(fieldsAppCategories: [FieldsAppCategories]? = nil, limitSubcategories: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppCategoryResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppCategories, limitSubcategories, include), id: "appInfos-primarySubcategoryTwo-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsAppCategories: [FieldsAppCategories]?, _ limitSubcategories: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
            encoder.encode(limitSubcategories, forKey: "limit[subcategories]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppCategories: String, Codable, CaseIterable {
            case parent
            case platforms
            case subcategories
        }

        public enum Include: String, Codable, CaseIterable {
            case parent
            case subcategories
        }
    }
}
