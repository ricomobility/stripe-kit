
import Foundation

extension SetupIntentsRoutes {
    public func create(confirm: Bool? = nil,
                       customer: String? = nil,
                       description: String? = nil,
                       metadata: [String: String]? = nil,
                       paymentMethod: String? = nil,
                       paymentMethodTypes: [String]? = nil,
                       usage: String? = nil,
                       attachToSelf: Bool? = nil,
                       automaticPaymentMethods: [String: Any]? = nil,
                       flowDirections: String? = nil,
                       mandateData: [String: Any]? = nil,
                       onBehalfOf: String? = nil,
                       paymentMethodData: [String: Any]? = nil,
                       paymentMethodOptions: [String: Any]? = nil,
                       returnUrl: String? = nil,
                       singleUse: [String: Any]? = nil,
                       expand: [String]? = nil) async throws -> SetupIntent {
        try await self.create(confirm: confirm, customer: customer, description: description, metadata: metadata, paymentMethod: paymentMethod, paymentMethodTypes: paymentMethodTypes, usage: usage, attachToSelf: attachToSelf, automaticPaymentMethods: automaticPaymentMethods, flowDirections: flowDirections, mandateData: mandateData, onBehalfOf: onBehalfOf, paymentMethodData: paymentMethodData, paymentMethodOptions: paymentMethodOptions, returnUrl: returnUrl, singleUse: singleUse, expand: expand)
    }
    
    public func confirm(intent: String,
                        paymentMethod: String? = nil,
                        mandateData: [String: Any]? = nil,
                        paymentMethodData: [String: Any]? = nil,
                        paymentMethodOptions: [String: Any]? = nil,
                        returnUrl: String? = nil,
                        expand: [String]? = nil) async throws -> SetupIntent {
        try await self.confirm(intent: intent, paymentMethod: paymentMethod, mandateData: mandateData, paymentMethodData: paymentMethodData, paymentMethodOptions: paymentMethodOptions, returnUrl: returnUrl, expand: expand)
    }
}
