// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiProducts {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ciProducts/{id}`
        public let path: String

        public func get(fieldsCiProducts: [FieldsCiProducts]? = nil, include: [Include]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, limitPrimaryRepositories: Int? = nil) -> Request<_Specification.CiProductResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiProducts, include, fieldsCiBuildRuns, fieldsCiWorkflows, fieldsApps, fieldsScmRepositories, limitPrimaryRepositories), id: "ciProducts-get_instance")
        }

        private func makeGetQuery(_ fieldsCiProducts: [FieldsCiProducts]?, _ include: [Include]?, _ fieldsCiBuildRuns: [FieldsCiBuildRuns]?, _ fieldsCiWorkflows: [FieldsCiWorkflows]?, _ fieldsApps: [FieldsApps]?, _ fieldsScmRepositories: [FieldsScmRepositories]?, _ limitPrimaryRepositories: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
            encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
            encoder.encode(fieldsApps, forKey: "fields[apps]")
            encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
            encoder.encode(limitPrimaryRepositories, forKey: "limit[primaryRepositories]")
            return encoder.items
        }

        public enum FieldsCiProducts: String, Codable, CaseIterable {
            case additionalRepositories
            case app
            case buildRuns
            case bundleID = "bundleId"
            case createdDate
            case name
            case primaryRepositories
            case productType
            case workflows
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case bundleID = "bundleId"
            case primaryRepositories
        }

        public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
            case actions
            case buildRun
            case builds
            case cancelReason
            case clean
            case completionStatus
            case createdDate
            case destinationBranch
            case destinationCommit
            case executionProgress
            case finishedDate
            case isPullRequestBuild
            case issueCounts
            case number
            case product
            case pullRequest
            case sourceBranchOrTag
            case sourceCommit
            case startReason
            case startedDate
            case workflow
        }

        public enum FieldsCiWorkflows: String, Codable, CaseIterable {
            case actions
            case branchStartCondition
            case buildRuns
            case clean
            case containerFilePath
            case description
            case isEnabled
            case isLockedForEditing
            case lastModifiedDate
            case macOsVersion
            case name
            case product
            case pullRequestStartCondition
            case repository
            case scheduledStartCondition
            case tagStartCondition
            case xcodeVersion
        }

        public enum FieldsApps: String, Codable, CaseIterable {
            case appAvailability
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
            case appPricePoints
            case appPriceSchedule
            case appStoreVersionExperimentsV2
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

        public enum FieldsScmRepositories: String, Codable, CaseIterable {
            case defaultBranch
            case gitReferences
            case httpCloneURL = "httpCloneUrl"
            case lastAccessedDate
            case ownerName
            case pullRequests
            case repositoryName
            case scmProvider
            case sshCloneURL = "sshCloneUrl"
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "ciProducts-delete_instance")
        }
    }
}
