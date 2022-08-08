//
//  ViewController.swift
//  URLSessionHW
//
//  Created by Алексей on 08.08.2022.
//

import UIKit

let urlJSON = "https://api.agify.io/?name=bella"

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TappedButton() {
        guard let url = URL(string: urlJSON) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let unpackedData = try JSONDecoder().decode(Model.self, from: data)
                print(unpackedData)
            } catch let error {
                print(error)
            }
        }.resume()
    }
    
}

