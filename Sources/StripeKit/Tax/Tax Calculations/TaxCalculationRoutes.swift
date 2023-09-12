
import Foundation

public protocol TaxCalculationRoutes: StripeAPIRoute {

    func calculate(_ request: TaxCalculation.Request) async throws -> TaxCalculation
}
