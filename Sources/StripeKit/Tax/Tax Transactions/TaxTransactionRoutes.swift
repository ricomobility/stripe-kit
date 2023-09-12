
import Foundation

public protocol TaxTransactionRoutes: StripeAPIRoute {
    
    func create(_ request: TaxTransaction.Request) async throws -> TaxTransaction
}
