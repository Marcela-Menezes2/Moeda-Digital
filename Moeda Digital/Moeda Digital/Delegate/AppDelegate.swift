//
//  AppDelegate.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 05/03/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
        }

//<<<<<<< HEAD
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        APICaller.shared.getAllIcons()
        // Override point for customization after application launch.
        return true
    }
//=======
////    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
////
////        APICaller.shared.getAllIcons()
////        // Override point for customization after application launch.
////        return true
////    }
//>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        var window: UIWindow?
                window = UIWindow(frame: UIScreen.main.bounds) // 1
                let mainVC = TabBarController()
                window?.rootViewController = mainVC // 2
                window?.makeKeyAndVisible() // 3
              //  return true
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }




