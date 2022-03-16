//
//  FavoritosViewController.swift
//  Moeda Digital
//
//  Created by Moacir Ezequiel Lamego on 14/03/22.
//

import UIKit

class FavoritosViewController: UIViewController {
    
    var vc: FavoritsCollectionViewCell = {
        let view = FavoritsCollectionViewCell()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
       self.view = self.vc
    }
}
