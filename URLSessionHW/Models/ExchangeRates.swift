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
    let usd: Int
    let rub: Double
    let eur: Double

    enum CodingKeys: String, CodingKey {
        case usd = "USD"
        case rub = "RUB"
        case eur = "EUR"
    }
}
