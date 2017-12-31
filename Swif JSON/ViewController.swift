//
//  ViewController.swift
//  Swif JSON
//
//  Created by Samet ÇELİKBIÇAK on 31.12.2017.
//  Copyright © 2017 Samet ÇELİKBIÇAK. All rights reserved.
//

import UIKit

let myApiUrl = "https://api.coinmarketcap.com/v1/ticker/?convert=TRY&limit=3"
let url = URL(string: myApiUrl)!
let myJSONData = try! Data(contentsOf: url)
var jsonDecoder = JSONDecoder()

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currencies = try? jsonDecoder.decode([CurrencyModel].self, from: myJSONData)
        if let currency = currencies{
            
            for c in currency{
                dump(c)
                let lastUpdateUTC = Date(timeIntervalSince1970: TimeInterval(Int(c.last_updated)!))
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "dd-MM-YYYY hh:mm:ss a"
                let lastUpdateLocal = dateFormatter.string(from: lastUpdateUTC)
                print("Son Güncelleme UTC:" + String(describing: lastUpdateUTC))
                print("Son Güncelleme Local:" + String(describing: lastUpdateLocal))
            }
        }
    }
}

