
import Foundation

public protocol TaxCalculationRoutes: StripeAPIRoute {

    func calculate(
        currency: Currency,
        lineItems: [TaxCalculation.LineItem],
        customerDetails: TaxCalculation.CustomerDetails
    ) async throws -> TaxCalculation
}
