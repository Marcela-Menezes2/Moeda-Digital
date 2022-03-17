//
//  TabBarCoordinator.swift
//  Moeda Digital
//
//  Created by Moacir Ezequiel Lamego on 14/03/22.
//

import UIKit


class TabBarCoordinator {    
    var navigationController: UINavigationController
    var tabBarController: UITabBarController
    
    init(navigationController: UINavigationController, tabBarController: UITabBarController) {
        self.navigationController = navigationController
        self.tabBarController = tabBarController
    }
    
    func start() {
        let listaMoedasVC = ListaDeMoedasViewcontroller()
        listaMoedasVC.onSelectedMoeda = {viewModel in
            let viewController = DetalhesViewController()
            
            self.navigationController.pushViewController(viewController, animated: true)
        }
        
        listaMoedasVC.title = "Moedas"

        let favoritosVC =  FavoritosViewController()
        favoritosVC.title = "Adicionadas"
        
        tabBarController.setViewControllers([listaMoedasVC, favoritosVC], animated: false)
        
        guard let icones = tabBarController.tabBar.items else {
            return
        }
        
        let imagens = ["dollarsign.square","star.fill", "dollarsign.square.fill", "star.fill"]
        
        for icone in 0..<icones.count {
            icones[icone].image = UIImage(systemName: imagens[icone])?.withTintColor(.darkGray, renderingMode: .alwaysOriginal)
        }
        
        for item in icones {
            item.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .selected)
            item.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .normal)
        }
        
        tabBarController.modalPresentationStyle = .fullScreen
        tabBarController.tabBar.backgroundColor = .black
    }
}
