//
//  LostPasswordViewController.swift
//  Secuvecinos
//
//  Created by John on 9/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class LostPasswordViewController: UIViewController {

    @IBAction func showSentEmail(sender: AnyObject) {
        var alertController:UIAlertController?
        alertController = UIAlertController(title: "Éxito",
            message: "Se envió un link a su correo electrónico con instrucciones para restablecer su contraseña.",
            preferredStyle: .Alert)

        let action = UIAlertAction(title: "Regresar a inicio",
            style: .Default,
            handler: { action in self.performSegueWithIdentifier("SegueLogin", sender: self) })
        
        alertController?.addAction(action)
        self.presentViewController(alertController!,
            animated: true,
            completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
