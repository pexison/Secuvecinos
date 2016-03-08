//
//  LoginViewController.swift
//  Secuvecinos
//
//  Created by John on 9/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class LoginViewController: HideKeyBoard, UITextFieldDelegate {

    @IBOutlet weak var Google: UIImageView!
    
    @IBOutlet weak var Facebook: UIImageView!
    
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
            
            if self.user.text == "pedro.perez" {
                self.performSegueWithIdentifier("StartSession", sender: sender)
            } else {
                self.performSegueWithIdentifier("StartSessionAlternate", sender: sender)
            }
            
        }
    }
    
    @IBAction func login(sender: AnyObject) {
        enter(sender)
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
        

        
        Google.image = UIImage(named: "google_plus")
        Facebook.image = UIImage(named: "facebook")

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
