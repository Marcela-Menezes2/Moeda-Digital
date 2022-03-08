//
//  ViewController.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 05/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    
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
        present(tabBarViewController, animated: false)
    }

}
 
class ViewController1: UIViewController {
    
    

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
//
            
//        let titulo = "Moedas"
    }



class ViewController2: UIViewController {
    
    var vc: DetalhesScreen?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
    }
      
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func loadView() {
        self.vc = DetalhesScreen()
        self.view = self.vc
    }
    
   override var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    
//        let titulo = "Adicionadas"
    }  

