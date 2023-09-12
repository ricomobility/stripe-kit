
import Foundation
import NIO
import NIOHTTP1

public struct StripeTaxTransactions: TaxTransactionRoutes {
    
    public var headers: HTTPHeaders = ["Content-Type": "application/json"]
    private let apiHandler: StripeAPIHandler
    private let taxCalculations = APIBase + APIVersion + "tax/transactions"
    private let encoder: JSONEncoder = .init()
    
    init(apiHandler: StripeAPIHandler) {
        self.apiHandler = apiHandler
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.keyEncodingStrategy = .convertToSnakeCase
    }
    
    public func create(_ request: TaxTransaction.Request) async throws -> TaxTransaction {
        let body = try encoder.encode(request)
        return try await apiHandler.send(method: .POST, path: "\(taxCalculations)/create_from_calculation", body: .data(body), headers: headers)
    }
}
