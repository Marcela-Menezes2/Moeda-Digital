//
//  ViewController.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 05/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var moedaScreen:MoedaScreen?
 
    override func loadView() {
        self.moedaScreen = MoedaScreen()
        self.view = self.moedaScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
    }

    override func viewWillAppear(_ animated: Bool) {
     self.navigationController?.setNavigationBarHidden(true, animated: true)

   
}
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    
  
    }
    
}
