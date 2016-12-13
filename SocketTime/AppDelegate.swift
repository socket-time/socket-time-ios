//
//  AppDelegate.swift
//  SocketTime
//
//  Created by Bibo on 12/13/16.
//  Copyright © 2016 Bibo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        setupRootViewController()
        
        return true
    }
    
    func setupRootViewController() {
        RoutingManager.shared.initialize()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RoutingManager.shared.rootVC
        window?.makeKeyAndVisible()
    }
}

