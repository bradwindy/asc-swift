// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppClipAdvancedExperienceImages {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appClipAdvancedExperienceImages/{id}`
        public let path: String

        public func get(fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages]? = nil) -> Request<_Specification.AppClipAdvancedExperienceImageResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppClipAdvancedExperienceImages), id: "appClipAdvancedExperienceImages-get_instance")
        }

        private func makeGetQuery(_ fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAppClipAdvancedExperienceImages, forKey: "fields[appClipAdvancedExperienceImages]", explode: false)
            return encoder.items
        }

        public enum FieldsAppClipAdvancedExperienceImages: String, Codable, CaseIterable {
            case assetDeliveryState
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public func patch(_ body: _Specification.AppClipAdvancedExperienceImageUpdateRequest) -> Request<_Specification.AppClipAdvancedExperienceImageResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appClipAdvancedExperienceImages-update_instance")
        }
    }
}
