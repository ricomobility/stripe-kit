
import Foundation

extension TaxCalculation {
    
    struct Request: Encodable {
        let currency: Currency
        let lineItems: [LineItem]
        let customerDetails: CustomerDetails
    }
    
    public struct LineItem: Encodable {
        public let amount: Int
        public let reference: String
    }
    
    public struct CustomerDetails: Encodable {
        public let address: Address
        
        public struct Address: Encodable {
            public let country: String
            public let postalCode: String
        }
    }
}
