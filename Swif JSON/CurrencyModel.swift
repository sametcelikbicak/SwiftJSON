//
//  CurrencyModel.swift
//  Swif JSON
//
//  Created by Samet ÇELİKBIÇAK on 31.12.2017.
//  Copyright © 2017 Samet ÇELİKBIÇAK. All rights reserved.
//

import Foundation

struct CurrencyModel:Codable {
    var id:String
    var name:String
    var symbol:String
    var rank:String
    var price_usd:String
    var price_btc:String
    var percent_change_1h:String
    var percent_change_24h:String
    var percent_change_7d:String
    var last_updated:String
    var price_try:String
}
