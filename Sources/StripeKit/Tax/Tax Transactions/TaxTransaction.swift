
import Foundation

public struct TaxTransaction: Codable {
    public let id: String
    public let reference: String
}

extension TaxTransaction {
    public struct Request: Codable {
        public let calculation: String
        public let reference: String
        
        public init(calculation: String, reference: String) {
            self.calculation = calculation
            self.reference = reference
        }
    }
}

extension TaxTransaction.Request: URLEncodable {
    var queryItems: [URLQueryItem] {
        [
            .init(name: "calculation", value: calculation),
            .init(name: "reference", value: reference)
        ]
    }
}
