//
//  RemoveViewController.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 11/03/22.
//

import Foundation
import UIKit

class RemoverViewController: UIViewController {

    var removerScreen: RemoverScreen?
    
    override func loadView() {
        self.removerScreen = RemoverScreen()
        self.view = self.removerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.removerScreen?.delegate(delegate: self)

    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
         return .lightContent
     }
}

    

extension RemoverViewController: RemoverScreenProtocol{
   @objc func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionCadastrarButton() {
        
    }
}

