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
<<<<<<< HEAD
            let viewController = DetalhesViewController()
=======
            let viewController = FavoritosViewController()
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)
            
            self.navigationController.pushViewController(viewController, animated: true)
        }
        
        listaMoedasVC.title = "Moedas"

        let favoritosVC =  FavoritosViewController()
        favoritosVC.title = "Adicionadas"
        
        tabBarController.setViewControllers([listaMoedasVC, favoritosVC], animated: false)
<<<<<<< HEAD
        
=======
        tabBarController.tabBar.barTintColor = .black
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)
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
<<<<<<< HEAD
        tabBarController.tabBar.backgroundColor = .black
=======
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)
    }
}
