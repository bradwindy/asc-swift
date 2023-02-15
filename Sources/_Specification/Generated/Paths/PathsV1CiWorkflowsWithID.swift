// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation
import URLQueryEncoder

extension Resources.V1.CiWorkflows {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ciWorkflows/{id}`
        public let path: String

        public func get(fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, include: [Include]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil) -> Request<_Specification.CiWorkflowResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiWorkflows, include, fieldsCiBuildRuns, fieldsScmRepositories), id: "ciWorkflows-get_instance")
        }

        private func makeGetQuery(_ fieldsCiWorkflows: [FieldsCiWorkflows]?, _ include: [Include]?, _ fieldsCiBuildRuns: [FieldsCiBuildRuns]?, _ fieldsScmRepositories: [FieldsScmRepositories]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
            encoder.encode(include, forKey: "include")
            encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
            encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
            return encoder.items
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

        public enum Include: String, Codable, CaseIterable {
            case macOsVersion
            case product
            case repository
            case xcodeVersion
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

        public func patch(_ body: _Specification.CiWorkflowUpdateRequest) -> Request<_Specification.CiWorkflowResponse> {
            Request(path: path, method: "PATCH", body: body, id: "ciWorkflows-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "ciWorkflows-delete_instance")
        }
    }
}
