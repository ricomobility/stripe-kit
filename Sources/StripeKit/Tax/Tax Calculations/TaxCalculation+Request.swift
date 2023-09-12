
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
            items.append(.init(name: "line_items[\(idx)][amount]", value: "\(value.amount)"))
            items.append(.init(name: "line_items[\(idx)][reference]", value: value.reference))
        }
        return items
    }
}
