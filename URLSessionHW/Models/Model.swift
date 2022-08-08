//
//  Model.swift
//  URLSessionHW
//
//  Created by Алексей on 08.08.2022.
//

import Foundation

struct Model: Decodable {
    let server: String
}

struct File: Decodable {
    let name: String
    let format: String
}
