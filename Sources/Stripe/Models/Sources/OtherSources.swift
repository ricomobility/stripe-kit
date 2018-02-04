//
//  OtherSources.swift
//  Stripe
//
//  Created by Andrew Edwards on 12/6/17.
//

/**
 Payment Sources
 https://stripe.com/docs/sources
 */

// MARK: - ThreeDSecure
public struct ThreeDSecure: StripeModel {
    public var card: String?
    public var customer: String?
    public var authenticated: Bool?
}

// MARK: - Giropay
public struct Giropay: StripeModel {
    public var bankCode: String?
    public var bic: String?
    public var bankName: String?
    public var statementDescriptor: String?
    
    enum CodingKeys: String, CodingKey {
        case bankCode = "bank_code"
        case bic
        case bankName = "bank_name"
        case statementDescriptor = "statement_descriptor"
    }
}

// MARK: - SepaDebit
public struct SepaDebit: StripeModel {
    public var bankCode: String?
    public var country: String?
    public var fingerprint: String?
    public var last4: String?
    public var mandateReference: String?
    public var mandateUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case bankCode = "bank_code"
        case country
        case fingerprint
        case last4
        case mandateReference = "mandate_reference"
        case mandateUrl = "mandate_url"
    }
}

// MARK: - iDEAL
public struct iDEAL: StripeModel {
    public var bank: String?
    public var bic: String?
    public var iBanLast4: String?
    public var statementDescriptor: String?
    
    enum CodingKeys: String, CodingKey {
        case bank
        case bic
        case iBanLast4 = "iban_last4"
        case statementDescriptor = "statement_descriptor"
    }
}

// MARK: - SOFORT
public struct SOFORT: StripeModel {
    public var country: String?
    public var bankCode: String?
    public var bic: String?
    public var bankName: String?
    public var iBanLast4: String?
    public var preferredLanguage: String?
    public var statementDescriptor: String?
    
    enum CodingKeys: String, CodingKey {
        case country
        case bankCode = "bank_code"
        case bic
        case bankName = "bank_name"
        case iBanLast4 = "iban_last4"
        case preferredLanguage = "preferred_language"
        case statementDescriptor = "statement_descriptor"
    }
}

// MARK: - Bancontact
public struct Bancontact: StripeModel {
    public var bankCode: String?
    public var bic: String?
    public var bankName: String?
    public var statementDescriptor: String?
    public var preferredLanguage: String?
    
    enum CodingKeys: String, CodingKey {
        case bankCode = "bank_code"
        case bic
        case bankName = "bank_name"
        case statementDescriptor = "statement_descriptor"
        case preferredLanguage = "preferred_language"
    }
}

// MARK: - Alipay
public struct Alipay: StripeModel {
    public var nativeUrl: String?
    public var statementDescriptor: String?
    
    enum CodingKeys: String, CodingKey {
        case nativeUrl = "native_url"
        case statementDescriptor = "statement_descriptor"
    }
}

// MARK: - P24
public struct P24: StripeModel {
    public var reference: String?
}
