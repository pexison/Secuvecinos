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
    
    @IBOutlet weak var checkbox: UIButton!
    
    @IBAction func register_proceed(sender: AnyObject) {
        if status {
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
        } else {
            var alertController:UIAlertController?
            alertController = UIAlertController(title: "Alerta",
                message: "No se han aceptado los terminos y condiciones",
                preferredStyle: .Alert)
            
            let action = UIAlertAction(title: "Submit",
                style: UIAlertActionStyle.Default,
                handler: nil)
            
            alertController?.addAction(action)
            self.presentViewController(alertController!,
                animated: true,
                completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         checkbox.highlighted = status;
        
        self.name.delegate = self;
        self.id.delegate = self;
        self.email.delegate = self;
        self.phoneNumber.delegate = self;
        self.user.delegate = self;
        self.password.delegate = self;
        self.confirmPassword.delegate = self;
        
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
