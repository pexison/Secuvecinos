//
//  WelcomeViewController.swift
//  Secuvecinos
//
//  Created by John on 10/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var register: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.layer.cornerRadius = 10
        login.layer.borderWidth = 4
        login.layer.borderColor = UIColor.whiteColor().CGColor
        register.layer.cornerRadius = 10
        register.layer.borderWidth = 4
        register.layer.borderColor = UIColor.whiteColor().CGColor
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
