//
//  TermsViewController.swift
//  Secuvecinos
//
//  Created by John on 9/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    var status = false;
    
    @IBOutlet weak var terms: UITextView!
    
    @IBAction func agreeBtn(sender: AnyObject) {
        status = true;
    }
    
    @IBAction func rejectBtn(sender: AnyObject) {
        status = false;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        terms.editable = false;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : RegisterViewController = segue.destinationViewController as! RegisterViewController;
      
        DestViewController.status = status;
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
