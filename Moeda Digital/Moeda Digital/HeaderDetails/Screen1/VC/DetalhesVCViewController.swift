//
//  DetailsVC.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 07/03/22.
//

import UIKit

class DetalhesViewController: UIViewController {

    
    var detalhesScreen: DetalhesScreen?
    
    override func loadView() {
        self.detalhesScreen = DetalhesScreen()
        self.view = self.detalhesScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detalhesScreen?.delegate(delegate: self)

    }
}
    

extension DetalhesViewController: DetalhesScreenProtocol{
   @objc func actionBackButton() {
        print("Que merda é essa")
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCadastrarButton() {
        
    }
}


