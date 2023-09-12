
import Foundation

extension TaxCalculation {
    
    public struct Request {
        let currency: Currency
        let lineItems: [LineItem]
        let customerDetails: CustomerDetails
        
        public init(currency: Currency, lineItems: [LineItem], customerDetails: CustomerDetails) {
            self.currency = currency
            self.lineItems = lineItems
            self.customerDetails = customerDetails
        }
    }
    
    public struct LineItem {
        public let amount: Int
        public let reference: String
        
        public init(amount: Int, reference: String) {
            self.amount = amount
            self.reference = reference
        }
    }
    
    public struct CustomerDetails {
        public let address: Address
        public let addressSource: AddressSource
        
        public init(address: Address, addressSource: AddressSource) {
            self.address = address
            self.addressSource = addressSource
        }
        
        public struct Address: Encodable {
            public let country: String
            public let postalCode: String
            
            public init(country: String, postalCode: String) {
                self.country = country
                self.postalCode = postalCode
            }
        }
        
        public enum AddressSource: String {
            case billing
            case shipping
        }
    }
}

extension TaxCalculation.Request: URLEncodable {
    var queryItems: [URLQueryItem] {
        var items: [URLQueryItem] = [
            .init(name: "currency", value: currency.rawValue),
            .init(name: "customer_details[address][country]", value: customerDetails.address.country),
            .init(name: "customer_details[address][postal_code]", value: customerDetails.address.postalCode),
            .init(name: "customer_details[address_source]", value: customerDetails.addressSource.rawValue)
        ]
        for (idx, value) in lineItems.enumerated() {
            items.append(.init(name: "line_items[\(idx)][amount]", value: value.amount.formatted()))
            items.append(.init(name: "line_items[\(idx)][reference]", value: value.reference))
        }
        return items
    }
}
