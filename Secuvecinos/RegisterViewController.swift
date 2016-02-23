//
//  RegisterViewController.swift
//  Secuvecinos
//
//  Created by John on 9/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class RegisterViewController: HideKeyBoard, UITextFieldDelegate {

    var status = false;
    
    @IBOutlet weak var name: UITextField!

    @IBOutlet weak var id: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
   
    @IBOutlet weak var user: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var terms: UIButton!
    
    @IBOutlet weak var nameImg: UIImageView!
    @IBOutlet weak var identityImg: UIImageView!
    @IBOutlet weak var emailImg: UIImageView!
    @IBOutlet weak var phoneImg: UIImageView!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var passwordImg: UIImageView!
    @IBOutlet weak var confirmPasswordImg: UIImageView!
    @IBOutlet weak var googleImg: UIImageView!
    @IBOutlet weak var facebookImg: UIImageView!
    
    @IBAction func register_proceed(sender: AnyObject) {
            var alertController:UIAlertController?
            alertController = UIAlertController(title: "Éxito",
                message: "Se ha regitrado exitosamente",
                preferredStyle: .Alert)
            
            let action = UIAlertAction(title: "Ingresar a la aplicación",
                style: .Default,
                handler: { action in self.performSegueWithIdentifier("SessionStartFromRegister", sender: self) })
            
            alertController?.addAction(action)
            self.presentViewController(alertController!,
                animated: true,
                completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.name.delegate = self;
        self.id.delegate = self;
        self.email.delegate = self;
        self.phoneNumber.delegate = self;
        self.user.delegate = self;
        self.password.delegate = self;
        self.confirmPassword.delegate = self;

        self.nameImg.image = UIImage(named:"name")
        self.emailImg.image = UIImage(named:"email")
        self.identityImg.image = UIImage(named:"identity")
        self.phoneImg.image = UIImage(named:"phone")
        self.userImg.image = UIImage(named:"login")
        self.passwordImg.image = UIImage(named:"password")
        self.confirmPasswordImg.image = UIImage(named:"password")
        self.facebookImg.image = UIImage(named:"facebook")
        self.googleImg.image = UIImage(named:"google_plus")
        
        // Do any additional setup after loading the view.
    }

       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
