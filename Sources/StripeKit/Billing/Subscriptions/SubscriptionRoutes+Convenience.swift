//
//  File.swift
//  
//
//  Created by Ravil Khusainov on 26.01.24.
//

import Foundation

extension SubscriptionRoutes {
    public func create(
        customer: String,
        items: [[String: Any]],
        cancelAtPeriodEnd: Bool? = nil,
        currency: Currency? = nil,
        defaultPaymentMethod: String? = nil,
        description: String? = nil,
        metadata: [String: String]? = nil,
        paymentBehavior: SubscriptionPaymentBehavior? = nil,
        addInvoiceItems: [[String: Any]]? = nil,
        applicationFeePercent: Decimal? = nil,
        automaticTax: [String: Any]? = nil,
        backdateStartDate: Date? = nil,
        billingCycleAnchor: Date? = nil,
        billingCycleAnchorConfig: [String: Any]? = nil,
        billingThresholds: [String: Any]? = nil,
        cancelAt: Date? = nil,
        collectionMethod: SubscriptionCollectionMethod? = nil,
        coupon: String? = nil,
        daysUntilDue: Int? = nil,
        defaultSource: String? = nil,
        defaultTaxRates: [String]? = nil,
        offSession: Bool? = nil,
        onBehalfOf: String? = nil,
        paymentSettings: [String: Any]? = nil,
        pendingInvoiceItemInterval: [String: Any]? = nil,
        promotionCode: String? = nil,
        prorationBehavior: SubscriptionProrationBehavior? = nil,
        transferData: [String: Any]? = nil,
        trialEnd: Any? = nil,
        trialFromPlan: Bool? = nil,
        trialPeriodDays: Int? = nil,
        trialSettings: [String: Any]? = nil,
        expand: [String]? = nil
    ) async throws -> Subscription {
        try await create(customer: customer, items: items, cancelAtPeriodEnd: cancelAtPeriodEnd, currency: currency, defaultPaymentMethod: defaultPaymentMethod, description: description, metadata: metadata, paymentBehavior: paymentBehavior, addInvoiceItems: addInvoiceItems, applicationFeePercent: applicationFeePercent, automaticTax: automaticTax, backdateStartDate: backdateStartDate, billingCycleAnchor: billingCycleAnchor, billingCycleAnchorConfig: billingCycleAnchorConfig, billingThresholds: billingThresholds, cancelAt: cancelAt, collectionMethod: collectionMethod, coupon: coupon, daysUntilDue: daysUntilDue, defaultSource: defaultSource, defaultTaxRates: defaultTaxRates, offSession: offSession, onBehalfOf: onBehalfOf, paymentSettings: paymentSettings, pendingInvoiceItemInterval: pendingInvoiceItemInterval, promotionCode: promotionCode, prorationBehavior: prorationBehavior, transferData: transferData, trialEnd: trialEnd, trialFromPlan: trialFromPlan, trialPeriodDays: trialPeriodDays, trialSettings: trialSettings, expand: expand)
    }
}
