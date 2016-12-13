//
//  ViewModelsManager.swift
//  SocketTime
//
//  Created by Bibo on 12/13/16.
//  Copyright © 2016 Bibo. All rights reserved.
//

import UIKit

class ViewModelsManager: NSObject {
    
    static var shared = ViewModelsManager()
    
    dynamic var timesVM = TimesVM()
    
    func initialize() {
        
    }
    
    func clearAllViewModels() {
        timesVM = TimesVM()
    }
}
