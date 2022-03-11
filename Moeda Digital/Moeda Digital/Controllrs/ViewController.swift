//
//  ViewController.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 05/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
     self.navigationController?.setNavigationBarHidden(true, animated: true)
    
    }
    override func viewDidAppear(_ animated: Bool) {
        let vc1 = ViewController1()
        vc1.title = "Moedas"

        let vc2 =  ViewController2()
        vc2.title = "Adicionadas"
        
        let vc3 =  ViewController3()
        vc3.title = "Adicionadas"
        
        let tabBarViewController = UITabBarController()
        tabBarViewController.setViewControllers([vc1, vc2, vc3], animated: false)
        
        guard let icones = tabBarViewController.tabBar.items else {
            return
        }
        
        let imagens = ["dollarsign.square","star.fill", "dollarsign.square.fill"]
        
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
            
            var vc: MoedaScreen?
            
            override func viewDidLoad() {
                super.viewDidLoad()

                  }
            
             override var preferredStatusBarStyle: UIStatusBarStyle {
                  return .lightContent
              }
            
            override func loadView() {
               self.vc = MoedaScreen()
               self.view = self.vc
            }
        }
    
class ViewController2: UIViewController {
    
   var vc: DetalhesScreen?
    var viewController: DetalhesScreen?
    override func viewDidLoad() {
        super.viewDidLoad()

          }
    override func loadView() {
       self.vc = DetalhesScreen()
        self.view = self.vc
       
    }
      
}
    class ViewController3: UIViewController {
        
       var vc: RemoverScreen?
        var viewController: RemoverScreen?
        override func viewDidLoad() {
            super.viewDidLoad()

              }
        
        override func loadView() {
           self.vc = RemoverScreen()
            self.view = self.vc
           
        }
   
    override func viewWillAppear(_ animated: Bool) {
    //  self.navigationController?.setNavigationBarHidden(true, animated: true)
 }
   
}



