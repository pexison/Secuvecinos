//
//  SplashScreenViewController.swift
//  Secuvecinos
//
//  Created by John on 21/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "welcomeSecuvecinos")!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}