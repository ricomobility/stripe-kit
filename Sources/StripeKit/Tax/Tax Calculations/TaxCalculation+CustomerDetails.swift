
import Foundation

extension TaxCalculation {
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
