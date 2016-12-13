//
//  LandingVC.swift
//  SocketTime
//
//  Created by Bibo on 12/13/16.
//  Copyright © 2016 Bibo. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import SnapKit

class LandingVC: UIViewController {

    var timesDisposable : Disposable?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.darkText
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        view.addSubview(label)
        
        label.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
        
        timesDisposable = ViewModelsManager.shared.timesVM.rx.observe(String.self, "displayTime").subscribe { _ in
            label.text = ViewModelsManager.shared.timesVM.displayTime ?? ""
        }
    }
    
    deinit {
        timesDisposable?.dispose()
    }
    
}
