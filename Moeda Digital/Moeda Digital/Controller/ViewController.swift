//
//  ViewController.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 05/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .black

    }

    override func viewDidAppear(_ animated: Bool) {
        //MARK: Referencias da TabBar
        let listagemVC = ListagemViewController()
        let favoritosVC = FavoritosViewController()
        
        //MARK: Seta TabBar
        
        listagemVC.title = "Moedas"
        favoritosVC.title = "Adicionadas"
        
        let tabBarViewController = UITabBarController()
        tabBarViewController.setViewControllers([listagemVC, favoritosVC], animated: false)
        
        guard let icones = tabBarViewController.tabBar.items else {
            return
        }
        let imagens = ["dollarsign.square","star.fill"]
        
        for icone in 0..<icones.count {
            icones[icone].image = UIImage(systemName: imagens[icone])?.withTintColor(.darkGray, renderingMode: .alwaysOriginal)

        }
        for item in icones {

            item.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .selected)
            item.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .normal)

        }
        
        tabBarViewController.modalPresentationStyle = .fullScreen
        present(tabBarViewController, animated: false)
    }

}
 
class ListagemViewController: UIViewController {
    
    var moedaScreen:MoedaScreen?
 
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
  
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


}

class FavoritosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
}
