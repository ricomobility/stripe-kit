
import Foundation

public struct TaxTransaction: Codable {
    public let id: String
    public let reference: String
    public let taxDate: Date?
}
