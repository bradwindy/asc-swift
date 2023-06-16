// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct InAppPurchaseV2Response: Codable, Hashable {
    /// InAppPurchaseV2
    public var data: InAppPurchaseV2
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable, Hashable {
        case inAppPurchaseLocalization(InAppPurchaseLocalization)
        case inAppPurchasePricePoint(InAppPurchasePricePoint)
        case inAppPurchaseContent(InAppPurchaseContent)
        case inAppPurchaseAppStoreReviewScreenshot(InAppPurchaseAppStoreReviewScreenshot)
        case promotedPurchase(PromotedPurchase)
        case inAppPurchasePriceSchedule(InAppPurchasePriceSchedule)
        case inAppPurchaseAvailability(InAppPurchaseAvailability)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(InAppPurchaseLocalization.self) {
                self = .inAppPurchaseLocalization(value)
            } else if let value = try? container.decode(InAppPurchasePricePoint.self) {
                self = .inAppPurchasePricePoint(value)
            } else if let value = try? container.decode(InAppPurchaseContent.self) {
                self = .inAppPurchaseContent(value)
            } else if let value = try? container.decode(InAppPurchaseAppStoreReviewScreenshot.self) {
                self = .inAppPurchaseAppStoreReviewScreenshot(value)
            } else if let value = try? container.decode(PromotedPurchase.self) {
                self = .promotedPurchase(value)
            } else if let value = try? container.decode(InAppPurchasePriceSchedule.self) {
                self = .inAppPurchasePriceSchedule(value)
            } else if let value = try? container.decode(InAppPurchaseAvailability.self) {
                self = .inAppPurchaseAvailability(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (InAppPurchaseLocalization, InAppPurchasePricePoint, InAppPurchaseContent, InAppPurchaseAppStoreReviewScreenshot, PromotedPurchase, InAppPurchasePriceSchedule, InAppPurchaseAvailability)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .inAppPurchaseLocalization(let value): try container.encode(value)
            case .inAppPurchasePricePoint(let value): try container.encode(value)
            case .inAppPurchaseContent(let value): try container.encode(value)
            case .inAppPurchaseAppStoreReviewScreenshot(let value): try container.encode(value)
            case .promotedPurchase(let value): try container.encode(value)
            case .inAppPurchasePriceSchedule(let value): try container.encode(value)
            case .inAppPurchaseAvailability(let value): try container.encode(value)
            }
        }
    }

    public init(data: InAppPurchaseV2, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }
}
