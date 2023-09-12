
import Foundation

extension PaymentIntentRoutes {
    func create(amount: Int,
                currency: Currency,
                automaticPaymentMethods: [String: Any]? = nil,
                confirm: Bool? = nil,
                customer: String? = nil,
                description: String? = nil,
                metadata: [String: String]? = nil,
                offSession: Bool? = nil,
                paymentMethod: String? = nil,
                receiptEmail: String? = nil,
                setupFutureUsage: PaymentIntentSetupFutureUsage? = nil,
                shipping: [String: Any]? = nil,
                statementDescriptor: String? = nil,
                statementDescriptorSuffix: String? = nil,
                applicationFeeAmount: Int? = nil,
                captureMethod: PaymentIntentCaptureMethod? = nil,
                confirmationMethod: PaymentIntentConfirmationMethod? = nil,
                errorOnRequiresAction: Bool? = nil,
                mandate: String? = nil,
                mandateData: [String: Any]? = nil,
                onBehalfOf: String? = nil,
                paymentMethodData: [String: Any]? = nil,
                paymentMethodOptions: [String: Any]? = nil,
                paymentMethodTypes: [String]? = nil,
                radarOptions: [String: Any]? = nil,
                returnUrl: String? = nil,
                transferData: [String: Any]? = nil,
                transferGroup: String? = nil,
                useStripeSDK: Bool? = nil,
                expand: [String]? = nil) async throws -> PaymentIntent {
        try await create(amount: amount, currency: currency, automaticPaymentMethods: automaticPaymentMethods, confirm: confirm, customer: customer, description: description, metadata: metadata, offSession: offSession, paymentMethod: paymentMethod, receiptEmail: receiptEmail, setupFutureUsage: setupFutureUsage, shipping: shipping, statementDescriptor: statementDescriptor, statementDescriptorSuffix: statementDescriptorSuffix, applicationFeeAmount: applicationFeeAmount, captureMethod: captureMethod, confirmationMethod: confirmationMethod, errorOnRequiresAction: errorOnRequiresAction, mandate: mandate, mandateData: mandateData, onBehalfOf: onBehalfOf, paymentMethodData: paymentMethodData, paymentMethodOptions: paymentMethodOptions, paymentMethodTypes: paymentMethodTypes, radarOptions: radarOptions, returnUrl: returnUrl, transferData: transferData, transferGroup: transferGroup, useStripeSDK: useStripeSDK, expand: expand)
    }
    
    func capture(intent: String,
                 amountToCapture: Int? = nil,
                 applicationFeeAmount: Int? = nil,
                 statementDescriptor: String? = nil,
                 statementDescriptorSuffix: String? = nil,
                 transferData: [String: Any]? = nil,
                 expand: [String]? = nil) async throws -> PaymentIntent {
        try await capture(intent: intent, amountToCapture: amountToCapture, applicationFeeAmount: applicationFeeAmount, statementDescriptor: statementDescriptor, statementDescriptorSuffix: statementDescriptorSuffix, transferData: transferData, expand: expand)
    }
}
