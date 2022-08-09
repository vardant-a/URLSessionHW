//
//  ViewController.swift
//  URLSessionHW
//
//  Created by Алексей on 08.08.2022.
//

import UIKit

let urlJSON = "https://open.er-api.com/v6/latest/USD"

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: urlJSON) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print("Ошибка")
                return
            }
            do {
                let unpackedData = try JSONDecoder().decode(Model.self, from: data)
                print("""
                Данные JSON файла:
                result - \(unpackedData.result)
                provider - \(unpackedData.provider)
                timeLastUpdateUnix - \(unpackedData.timeLastUpdateUnix)
                Доллар - \(unpackedData.rates.eur)
                Рубль - \(unpackedData.rates.rub)
                Евро - \(unpackedData.rates.eur)
                """)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
// В Json файле значение доллара 1, по этому использовал инт, но при парсинге, значение стало 0.981. Даже не понял как.
