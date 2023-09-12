
import Foundation

extension TaxCalculation {
    
    public struct Request: Encodable {
        let currency: Currency
        let lineItems: [LineItem]
        let customerDetails: CustomerDetails
        
        public init(currency: Currency, lineItems: [LineItem], customerDetails: CustomerDetails) {
            self.currency = currency
            self.lineItems = lineItems
            self.customerDetails = customerDetails
        }
    }
    
    public struct LineItem: Encodable {
        public let amount: Int
        public let reference: String
        
        public init(amount: Int, reference: String) {
            self.amount = amount
            self.reference = reference
        }
    }
    
    public struct CustomerDetails: Encodable {
        public let address: Address
        
        public struct Address: Encodable {
            public let country: String
            public let postalCode: String
            
            public init(country: String, postalCode: String) {
                self.country = country
                self.postalCode = postalCode
            }
        }
    }
}
