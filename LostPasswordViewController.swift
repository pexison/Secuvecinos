//
//  LostPasswordViewController.swift
//  Secuvecinos
//
//  Created by John on 9/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class LostPasswordViewController: UIViewController {
    
    @IBOutlet weak var sentEmailDialog: UIView!
    @IBOutlet weak var sentEmailText: UITextView!
    
    @IBAction func showSentEmail(sender: AnyObject) {
        sentEmailDialog.hidden = false;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sentEmailText.editable = false;
        sentEmailDialog.hidden = true;
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
