//
//  ThirdPartyServicesManager.swift
//  SocketTime
//
//  Created by Bibo on 12/13/16.
//  Copyright © 2016 Bibo. All rights reserved.
//

import UIKit
import Firebase

class ThirdPartyServicesManager: NSObject {
    
    static var shared = ThirdPartyServicesManager()
    
    func initializeWithLaunchOptions(_ launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        setupFirebase()
    }
    
    func setupFirebase() {
        FIRApp.configure()
        
        print("setupFirebase")
        FIRDatabase.database().reference().observe(.value, with: { (snapshot) in
            
            
            guard let response = snapshot.value else { return }
            //print(response)
            let times = Times(object: response)
            
            guard let utc = times.utc else { return }
            //print(utc)
            
            ViewModelsManager.shared.timesVM.displayTime = utc
            //ViewModelsManager.shared.timesVM = ViewModelsManager.shared.timesVM
            
            //print(ViewModelsManager.shared.timesVM.displayTime!)
        })
    }
}
