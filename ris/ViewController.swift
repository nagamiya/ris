//
//  ViewController.swift
//  ris
//
//  Created by nagamiya on 2020/04/30.
//  Copyright © 2020 nagamiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let topView = TopView(frame: self.view.bounds)
        print("bouds >>  + \(self.view.bounds)")
        topView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(topView)
        
    }
    


}

