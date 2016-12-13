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
        initializeAllManagers(launchOptions: launchOptions)
        setupRootViewController()
        
        return true
    }
    
    func initializeAllManagers(launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        ViewModelsManager.shared.initialize()
        ThirdPartyServicesManager.shared.initializeWithLaunchOptions(launchOptions)
        RoutingManager.shared.initialize()
    }
    
    func setupRootViewController() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RoutingManager.shared.rootVC
        window?.makeKeyAndVisible()
    }
}

