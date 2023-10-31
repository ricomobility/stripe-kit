
import Foundation

extension CustomerRoutes {
    public func create(address: [String: Any]? = nil,
                description: String? = nil,
                email: String? = nil,
                metadata: [String: String]? = nil,
                name: String? = nil,
                paymentMethod: String? = nil,
                phone: String? = nil,
                shipping: [String: Any]? = nil,
                balance: Int? = nil,
                cashBalance: [String: Any]? = nil,
                coupon: String? = nil,
                invoicePrefix: String? = nil,
                invoiceSettings: [String: Any]? = nil,
                nextInvoiceSequence: Int? = nil,
                preferredLocales: [String]? = nil,
                promotionCode: String? = nil,
                source: Any? = nil,
                tax: [String: Any]? = nil,
                taxExempt: CustomerTaxExempt? = nil,
                taxIdData: [[String: Any]]? = nil,
                testClock: String? = nil,
                expand: [String]? = nil) async throws -> Customer {
        try await self.create(address: address, description: description, email: email, metadata: metadata, name: name, paymentMethod: paymentMethod, phone: phone, shipping: shipping, balance: balance, cashBalance: cashBalance, coupon: coupon, invoicePrefix: invoicePrefix, invoiceSettings: invoiceSettings, nextInvoiceSequence: nextInvoiceSequence, preferredLocales: preferredLocales, promotionCode: promotionCode, source: source, tax: tax, taxExempt: taxExempt, taxIdData: taxIdData, testClock: testClock, expand: expand)
    }
}
