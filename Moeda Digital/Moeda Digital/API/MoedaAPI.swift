//
//  MoedaAPI.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 13/03/22.
//

import Foundation

<<<<<<< HEAD
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
=======
// MARK: - CoinAPIElement
struct CoinAPIElement: Codable {
    let assetID, name: String
    let typeIsCrypto: Int
    let dataQuoteStart, dataQuoteEnd, dataTradeStart, dataTradeEnd: String?
    let dataSymbolsCount, volume1HrsUsd, volume1DayUsd, volume1MthUsd: Double?
    let dataStart, dataEnd: String?
    let priceUsd: Double?

    enum CodingKeys: String, CodingKey {
        case assetID = "asset_id"
        case name
        case typeIsCrypto = "type_is_crypto"
        case dataQuoteStart = "data_quote_start"
        case dataQuoteEnd = "data_quote_end"
        case dataTradeStart = "data_trade_start"
        case dataTradeEnd = "data_trade_end"
        case dataSymbolsCount = "data_symbols_count"
        case volume1HrsUsd = "volume_1hrs_usd"
        case volume1DayUsd = "volume_1day_usd"
        case volume1MthUsd = "volume_1mth_usd"
        case dataStart = "data_start"
        case dataEnd = "data_end"
        case priceUsd = "price_usd"
    }
}

typealias CoinAPI = [CoinAPIElement]
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)
