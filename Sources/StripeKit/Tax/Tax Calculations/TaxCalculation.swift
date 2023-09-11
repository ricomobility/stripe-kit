
import Foundation

public struct TaxCalculation: Codable {
    public let id: String
    public let amountTotal: Int
    
    public init(id: String, amountTotal: Int) {
        self.id = id
        self.amountTotal = amountTotal
    }
}
