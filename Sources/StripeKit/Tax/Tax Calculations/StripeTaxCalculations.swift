
import Foundation
import NIO
import NIOHTTP1

public struct StripeTaxCalculations: TaxCalculationRoutes {
    
    public var headers: HTTPHeaders = ["Content-Type": "application/json"]
    
    private let apiHandler: StripeAPIHandler
    private let taxCalculations = APIBase + APIVersion + "tax/calculations"
    private let encoder: JSONEncoder = .init()
    
    init(apiHandler: StripeAPIHandler) {
        self.apiHandler = apiHandler
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.keyEncodingStrategy = .convertToSnakeCase
    }
    
    public func calculate(
        currency: Currency,
        lineItems: [TaxCalculation.LineItem],
        customerDetails: TaxCalculation.CustomerDetails
    ) async throws -> TaxCalculation {
        let request = TaxCalculation.Request(
            currency: currency,
            lineItems: lineItems,
            customerDetails: customerDetails
        )
        let body = try encoder.encode(request)
        return try await apiHandler.send(method: .POST, path: taxCalculations, body: .data(body), headers: headers)
    }
}
