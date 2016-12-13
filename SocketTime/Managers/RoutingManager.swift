//
//  RoutingManager.swift
//  SocketTime
//
//  Created by Bibo on 12/13/16.
//  Copyright © 2016 Bibo. All rights reserved.
//

import UIKit

class RoutingManager: NSObject {
    
    static var shared = RoutingManager()
    
    var rootVC : RootVC!
    var landingVC : LandingVC?
    
    func initialize() {
        rootVC = RootVC()
        
        landingVC = LandingVC()
        guard let landingVC = landingVC else { return }
        addChildViewController(landingVC)
    }
    
    func addChildViewController(_ viewController:UIViewController) {
        rootVC.addChildViewController(viewController)
        rootVC.view.addSubview(viewController.view)
    }
}
