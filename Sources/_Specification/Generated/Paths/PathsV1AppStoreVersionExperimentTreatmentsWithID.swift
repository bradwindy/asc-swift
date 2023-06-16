// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppStoreVersionExperimentTreatments {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appStoreVersionExperimentTreatments/{id}`
        public let path: String

        public func get(fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, include: [Include]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil) -> Request<_Specification.AppStoreVersionExperimentTreatmentResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppStoreVersionExperimentTreatments, include, fieldsAppStoreVersionExperimentTreatmentLocalizations, limitAppStoreVersionExperimentTreatmentLocalizations), id: "appStoreVersionExperimentTreatments-get_instance")
        }

        private func makeGetQuery(_ fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?, _ include: [Include]?, _ fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?, _ limitAppStoreVersionExperimentTreatmentLocalizations: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
            encoder.encode(limitAppStoreVersionExperimentTreatmentLocalizations, forKey: "limit[appStoreVersionExperimentTreatmentLocalizations]")
            return encoder.items
        }

        public enum FieldsAppStoreVersionExperimentTreatments: String, Codable, CaseIterable {
            case appIcon
            case appIconName
            case appStoreVersionExperiment
            case appStoreVersionExperimentTreatmentLocalizations
            case appStoreVersionExperimentV2
            case name
            case promotedDate
        }

        public enum Include: String, Codable, CaseIterable {
            case appStoreVersionExperiment
            case appStoreVersionExperimentTreatmentLocalizations
            case appStoreVersionExperimentV2
        }

        public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersionExperimentTreatment
            case locale
        }

        public func patch(_ body: _Specification.AppStoreVersionExperimentTreatmentUpdateRequest) -> Request<_Specification.AppStoreVersionExperimentTreatmentResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appStoreVersionExperimentTreatments-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appStoreVersionExperimentTreatments-delete_instance")
        }
    }
}
