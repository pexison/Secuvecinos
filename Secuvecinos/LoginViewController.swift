//
//  LoginViewController.swift
//  Secuvecinos
//
//  Created by John on 9/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class LoginViewController: HideKeyBoard, UITextFieldDelegate {
    
    let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64( 4 * Double(NSEC_PER_SEC)))
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var user: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func enter(sender: AnyObject) {
        indicator.hidden = false
        indicator.startAnimating()
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.indicator.stopAnimating()
            self.indicator.hidden = true
            self.performSegueWithIdentifier("SessionStart", sender: sender)
        }
    }
    
    @IBAction func facebookLogin(sender: AnyObject) {
        enter(sender)
    }
    
    @IBAction func googleLogin(sender: AnyObject) {
        enter(sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.hidden = true
        self.user.delegate = self
        self.password.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
