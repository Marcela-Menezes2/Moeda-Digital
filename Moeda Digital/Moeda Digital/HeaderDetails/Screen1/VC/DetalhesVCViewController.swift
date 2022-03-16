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
        self.navigationController?.navigationBar.isHidden = true
        self.detalhesScreen?.delegate(delegate: self)

    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
         return .lightContent
     }
    public override func viewWillAppear(_ animated: Bool) {

            super.viewWillAppear(animated)



            // Hide the navigation bar on the this view controller

            self.navigationController?.setNavigationBarHidden(true, animated: animated)

        }
}

extension DetalhesViewController: DetalhesScreenProtocol{
    func actionBackButton() {
       debugPrint("Clicou")
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCadastrarButton() {
        
    }
}


