//
//  MoedaAPI.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 13/03/22.
//

import Foundation

struct Crypto: Codable{

  let asset_id: String

  let name: String?

  let price_usd: Float?

  let id_icon: String?

}



struct Icon: Codable{

  let asset_id: String

  let url: String

}
