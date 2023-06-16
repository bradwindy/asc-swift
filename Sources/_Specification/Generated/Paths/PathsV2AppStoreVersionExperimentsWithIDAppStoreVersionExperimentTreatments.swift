// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V2.AppStoreVersionExperiments.WithID {
    public var appStoreVersionExperimentTreatments: AppStoreVersionExperimentTreatments {
        AppStoreVersionExperimentTreatments(path: path + "/appStoreVersionExperimentTreatments")
    }

    public struct AppStoreVersionExperimentTreatments {
        /// Path: `/v2/appStoreVersionExperiments/{id}/appStoreVersionExperimentTreatments`
        public let path: String

        public func get(fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]? = nil, fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]? = nil, limit: Int? = nil, limitAppStoreVersionExperimentTreatmentLocalizations: Int? = nil, include: [Include]? = nil) -> Request<_Specification.AppStoreVersionExperimentTreatmentsResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(fieldsAppStoreVersionExperiments, fieldsAppStoreVersionExperimentTreatments, fieldsAppStoreVersionExperimentTreatmentLocalizations, limit, limitAppStoreVersionExperimentTreatmentLocalizations, include), id: "appStoreVersionExperiments-appStoreVersionExperimentTreatments-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?, _ fieldsAppStoreVersionExperimentTreatments: [FieldsAppStoreVersionExperimentTreatments]?, _ fieldsAppStoreVersionExperimentTreatmentLocalizations: [FieldsAppStoreVersionExperimentTreatmentLocalizations]?, _ limit: Int?, _ limitAppStoreVersionExperimentTreatmentLocalizations: Int?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
            encoder.encode(fieldsAppStoreVersionExperimentTreatments, forKey: "fields[appStoreVersionExperimentTreatments]")
            encoder.encode(fieldsAppStoreVersionExperimentTreatmentLocalizations, forKey: "fields[appStoreVersionExperimentTreatmentLocalizations]")
            encoder.encode(limit, forKey: "limit")
            encoder.encode(limitAppStoreVersionExperimentTreatmentLocalizations, forKey: "limit[appStoreVersionExperimentTreatmentLocalizations]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
            case app
            case appStoreVersionExperimentTreatments
            case controlVersions
            case endDate
            case latestControlVersion
            case name
            case platform
            case reviewRequired
            case startDate
            case started
            case state
            case trafficProportion
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

        public enum FieldsAppStoreVersionExperimentTreatmentLocalizations: String, Codable, CaseIterable {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersionExperimentTreatment
            case locale
        }

        public enum Include: String, Codable, CaseIterable {
            case appStoreVersionExperiment
            case appStoreVersionExperimentTreatmentLocalizations
            case appStoreVersionExperimentV2
        }
    }
}
