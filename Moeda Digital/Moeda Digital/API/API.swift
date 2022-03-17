//
//  API.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 13/03/22.
//

import Foundation

final class APICaller {

  static let shared = APICaller()
  public var icons: [Icon] = []

  

  private var whenReadyBlock: ((Result<[Crypto], Error>) -> Void)?

  private struct Constants{

    static let APIKey = "FF547373-E98D-463E-9889-4CA85651183E"

    static let assetsEndPoint = "https://rest-sandbox.coinapi.io/v1/assets/"
      
    static let searchUrlString = "https://rest-sandbox.coinapi.io/v1/assets/?apikey=FF547373-E98D-463E-9889-4CA85651183E"

  }

  private init() {}

  public func getAllCryptoData(
    completion: @escaping (Result<[Crypto], Error>) -> Void
  ){
      guard !icons.isEmpty else {
      whenReadyBlock = completion

      return
    }

    guard let url = URL(string: "https://rest.coinapi.io/v1/assets/?apikey=FF547373-E98D-463E-9889-4CA85651183E") else { return }

    let task = URLSession.shared.dataTask(with: url) { data, _, error in

      guard let data = data, error == nil else { return }

      do{

        let cryptos = try JSONDecoder().decode([Crypto].self, from: data)
          debugPrint(cryptos)
        completion(.success(cryptos))
          
      }catch{

        completion(.failure(error))

      }

    }

    task.resume()

  }

  public func getAllIcons(){

    guard let url = URL(string: "https://rest.coinapi.io/v1/assets/icons/55/?apikey=68C87D3E-C615-4C5E-A080-5995DE794D2E") else { return }

    let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in

      guard let data = data, error == nil else { return }

      

      do{

        self?.icons = try JSONDecoder().decode([Icon].self, from: data)
          debugPrint(self?.icons)
        if let completion = self?.whenReadyBlock{

          self?.getAllCryptoData(completion: completion)

        }

    
      } catch {

        print(error)

      }

    }

    task.resume()

  }

}
