// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.AppEncryptionDeclarations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appEncryptionDeclarations/{id}`
        public let path: String

        public func get(fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil, include: [Include]? = nil, fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]? = nil, fieldsApps: [FieldsApps]? = nil, limitBuilds: Int? = nil) -> Request<_Specification.AppEncryptionDeclarationResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppEncryptionDeclarations, include, fieldsAppEncryptionDeclarationDocuments, fieldsApps, limitBuilds), id: "appEncryptionDeclarations-get_instance")
        }

        private func makeGetQuery(_ fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?, _ include: [Include]?, _ fieldsAppEncryptionDeclarationDocuments: [FieldsAppEncryptionDeclarationDocuments]?, _ fieldsApps: [FieldsApps]?, _ limitBuilds: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsAppEncryptionDeclarationDocuments, forKey: "fields[appEncryptionDeclarationDocuments]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(limitBuilds, forKey: "limit[builds]")
            return encoder.items
        }

        public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
            case app
            case appDescription
            case appEncryptionDeclarationDocument
            case appEncryptionDeclarationState
            case availableOnFrenchStore
            case builds
            case codeValue
            case containsProprietaryCryptography
            case containsThirdPartyCryptography
            case createdDate
            case documentName
            case documentType
            case documentURL = "documentUrl"
            case exempt
            case platform
            case uploadedDate
            case usesEncryption
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case appEncryptionDeclarationDocument
            case builds
        }

        public enum FieldsAppEncryptionDeclarationDocuments: String, Codable, CaseIterable {
            case appEncryptionDeclaration
            case assetDeliveryState
            case assetToken
            case downloadURL = "downloadUrl"
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum FieldsApps: String, Codable, CaseIterable {
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
            case appStoreVersions
            case availableInNewTerritories
            case availableTerritories
            case betaAppLocalizations
            case betaAppReviewDetail
            case betaGroups
            case betaLicenseAgreement
            case betaTesters
            case builds
            case bundleID = "bundleId"
            case ciProduct
            case contentRightsDeclaration
            case customerReviews
            case endUserLicenseAgreement
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case isOrEverWasMadeForKids
            case name
            case perfPowerMetrics
            case preOrder
            case preReleaseVersions
            case pricePoints
            case prices
            case primaryLocale
            case promotedPurchases
            case reviewSubmissions
            case sku
            case subscriptionGracePeriod
            case subscriptionGroups
            case subscriptionStatusURL = "subscriptionStatusUrl"
            case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
            case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
            case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
        }
    }
}
