//
//  ExchangeRates.swift
//  URLSessionHW
//
//  Created by Алексей on 08.08.2022.
//

import Foundation

struct ExchangeRates: Decodable {
    let result: String
    let provider: String
    let timeLastUpdateUnix: Int
    let rates: Rate
    
    enum CodingKeys: String, CodingKey {
        case result, provider, rates
        case timeLastUpdateUnix = "time_last_update_unix"
    }
}

struct Rate: Decodable {
    let usd: Value
    let rub: Value
    let eur: Value
    let kzt: Value
    let aud: Value

    enum CodingKeys: String, CodingKey {
        case usd = "USD"
        case rub = "RUB"
        case eur = "EUR"
        case kzt = "KZT"
        case aud = "AUD"
    }
}

enum Value: Decodable {
    case int
    case double
}
