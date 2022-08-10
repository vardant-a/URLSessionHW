//
//  NetworkManager.swift
//  URLSessionHW
//
//  Created by Алексей on 10.08.2022.
//

import Foundation

enum Link: String {
    case usd = "https://open.er-api.com/v6/latest/USD"
    case rub = "https://open.er-api.com/v6/latest/RUB"
    case eur = "https://open.er-api.com/v6/latest/EUR"
}

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
//    func fetch<T: Decodable>(_ type: T.Type, from url: String?, completion: @escaping(Result<Data, NetworkError>) -> Void) {
//        guard let url = URL(string: url ?? "") else {
//            completion(.failure(.invalidURL))
//            return
//        }
//
//        URLSession.shared.dataTask(with: url) { data, _, error in
//            guard let data = data else {
//                completion(.failure(.noData))
//                return
//            }
//            do {
//                let type = try JSONDecoder().decode(T.self, from: data)
//                DispatchQueue.main.async {
//                    completion(.success(type))
//                }
//            } catch {
//                completion(.failure(.decodingError))
//            }
//        }.resume()
//    }
}
