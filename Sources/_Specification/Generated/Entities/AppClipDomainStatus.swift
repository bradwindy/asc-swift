// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct AppClipDomainStatus: Codable, Hashable, Identifiable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case appClipDomainStatuses
    }

    public struct Attributes: Codable, Hashable {
        public var domains: [Domain]?
        public var lastUpdatedDate: Date?

        public struct Domain: Codable, Hashable {
            public var domain: String?
            public var isValid: Bool?
            public var lastUpdatedDate: Date?
            public var errorCode: ErrorCode?

            public enum ErrorCode: String, Codable, CaseIterable {
                case badHTTPResponse = "BAD_HTTP_RESPONSE"
                case badJSONContent = "BAD_JSON_CONTENT"
                case badPkcs7Signature = "BAD_PKCS7_SIGNATURE"
                case cannotReachAasaFile = "CANNOT_REACH_AASA_FILE"
                case dnsError = "DNS_ERROR"
                case insecureRedirectsForbidden = "INSECURE_REDIRECTS_FORBIDDEN"
                case invalidEntitlementMissingSection = "INVALID_ENTITLEMENT_MISSING_SECTION"
                case invalidEntitlementSyntaxError = "INVALID_ENTITLEMENT_SYNTAX_ERROR"
                case invalidEntitlementUnhandledSection = "INVALID_ENTITLEMENT_UNHANDLED_SECTION"
                case invalidEntitlementUnknownID = "INVALID_ENTITLEMENT_UNKNOWN_ID"
                case networkError = "NETWORK_ERROR"
                case networkErrorTemporary = "NETWORK_ERROR_TEMPORARY"
                case otherError = "OTHER_ERROR"
                case timeout = "TIMEOUT"
                case tlsError = "TLS_ERROR"
                case unexpectedError = "UNEXPECTED_ERROR"
            }

            public init(domain: String? = nil, isValid: Bool? = nil, lastUpdatedDate: Date? = nil, errorCode: ErrorCode? = nil) {
                self.domain = domain
                self.isValid = isValid
                self.lastUpdatedDate = lastUpdatedDate
                self.errorCode = errorCode
            }
        }

        public init(domains: [Domain]? = nil, lastUpdatedDate: Date? = nil) {
            self.domains = domains
            self.lastUpdatedDate = lastUpdatedDate
        }
    }

    public init(type: `Type` = .appClipDomainStatuses, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }
}
