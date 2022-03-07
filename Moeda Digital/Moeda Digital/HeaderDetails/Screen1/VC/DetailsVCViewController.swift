//
//  DetailsVC.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 07/03/22.
//

import UIKit

class DetailsVC: UIViewController {

    
    var detailsScreen: DetailsScreen?
    
    override func loadView() {
        self.detailsScreen = DetailsScreen()
        self.view = self.detailsScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

}
