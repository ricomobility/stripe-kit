
import Foundation

extension TaxCalculation {
    public struct LineItem {
        public let amount: Int
        public let reference: String
        
        public init(amount: Int, reference: String) {
            self.amount = amount
            self.reference = reference
        }
    }
}
