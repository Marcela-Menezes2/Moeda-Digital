//
//  ListaDeMoedas.swift
//  Moeda Digital
//
//  Created by 
//

import UIKit

class ListaDeMoedasViewcontroller: UIViewController {
    
    var onSelectedMoeda: ((_ viewModel: CryptoTableViewCellViewModel) -> Void)?
    
    var vc: MoedaScreen = {
        let view = MoedaScreen()
        
        return view
    }()
    
    private var viewModels = [CryptoTableViewCellViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vc.onSelectedMoeda = {[weak self] viewModel in
            self?.onSelectedMoeda?(viewModel)
        }
        
        getData()
    }
    
     override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
      }
    
    override func loadView() {
       self.view = self.vc
    }
    
    func getData() {
        APICaller.shared.getAllIcons()
        
        APICaller.shared.getAllCryptoData { [weak self] result in
               switch result {
               case .success(let models):
                  self?.viewModels = models.compactMap({
                       
                       let price = $0.price_usd ?? 0
                       let formatter = MoedaScreen.numberFormatter
                       let priceString = formatter.string(from: NSNumber(value: price))
                      
                      
                      // ID de Moeda
                      
                      let assetID = $0.asset_id
                      let icon = APICaller.shared.icons[APICaller.shared.icons.firstIndex(where: { $0.asset_id == assetID }) ?? 0]
                      let iconURL = URL(string: icon.url 

)
                       return CryptoTableViewCellViewModel(
                       name: $0.name ?? "N/A",
                       symbol: $0.asset_id,
                       price: priceString ?? "N/A",
                       iconURL: iconURL
                       )
                      
                   })
                   
                   DispatchQueue.main.async {
                       self?.vc.viewModels = self?.viewModels ?? [CryptoTableViewCellViewModel]()
                       self?.vc.tableView.reloadData()
                   }
                   
               case .failure(let error):
                   print("Error: \(error)")
               }
           }
    }
}
