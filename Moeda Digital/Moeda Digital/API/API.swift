//
//  API.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 13/03/22.
//

import Foundation

final class APICaller {

    static let shared = APICaller()
    public var icons: [CoinAPIElement] = []

  

    private var whenReadyBlock: ((Result<[CoinAPIElement], Error>) -> Void)?

    // se der erro trocar a chave da api

    private struct Constants{
        static let APIKey = "A47747AB-9055-4EEE-8A4C-5D29ABD7F064"
        static let assetsEndPoint = "https://rest-sandbox.coinapi.io/v1/assets/"
        static let searchUrlString = "https://rest-sandbox.coinapi.io/v1/assets/?apikey=\(APIKey)"
    }

    private init() {}

    public func getAllCryptoData(
        completion: @escaping (Result<[CoinAPIElement], Error>) -> Void
    ){
//      guard !icons.isEmpty else {
//      whenReadyBlock = completion
//
//      return
//    }

    guard let url = URL(string: "https://rest-sandbox.coinapi.io/v1/assets/?apikey=A47747AB-9055-4EEE-8A4C-5D29ABD7F064") else { return }

    let task = URLSession.shared.dataTask(with: url) { data, _, error in
        guard let data = data, error == nil else { return }
        
        do{
            let cryptos = try JSONDecoder().decode([CoinAPIElement].self, from: data)
            completion(.success(cryptos))
        }catch{
            completion(.failure(error))
        }
    }
        
    task.resume()
    }

//    public func getAllIcons(){
//
//      guard let url = URL(string: "https://rest.coinapi.io/v1/assets/icons/55/?apikey=A47747AB-9055-4EEE-8A4C-5D29ABD7F064") else { return }
//      let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
//          guard let data = data, error == nil else { return }
//          do{
//              self?.icons = try JSONDecoder().decode([CoinAPIElement].self, from: data)
//              if let completion = self?.whenReadyBlock{
//                  self?.getAllCryptoData(completion: completion)
//              }
//          } catch {
//              print(error)
//          }
//      }
//      task.resume()
//  }
}
