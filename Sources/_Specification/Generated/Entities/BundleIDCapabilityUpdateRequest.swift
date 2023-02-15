// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct BundleIDCapabilityUpdateRequest: Codable, Hashable {
    public var data: Data

    public struct Data: Codable, Hashable, Identifiable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case bundleIDCapabilities = "bundleIdCapabilities"
        }

        public struct Attributes: Codable, Hashable {
            public var capabilityType: CapabilityType?
            public var settings: [CapabilitySetting]?

            public init(capabilityType: CapabilityType? = nil, settings: [CapabilitySetting]? = nil) {
                self.capabilityType = capabilityType
                self.settings = settings
            }
        }

        public init(type: `Type` = .bundleIDCapabilities, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }
    }

    public init(data: Data) {
        self.data = data
    }
}
