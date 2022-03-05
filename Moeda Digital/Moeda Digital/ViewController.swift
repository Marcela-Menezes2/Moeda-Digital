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
        view.backgroundColor = .systemPink
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let vc1 = ViewController1()
        vc1.title = "Moedas"

        let vc2 = ViewController2()
        vc2.title = "Adicionadas"
        
        
        
        
        let tabBarViewController = UITabBarController()
        tabBarViewController.setViewControllers([vc1, vc2], animated: false)
        
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
        present(tabBarViewController, animated: true)
    }

}
 
class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

//        let titulo = "Moedas"
    }

}

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

//        let titulo = "Adicionadas"
    }

}

