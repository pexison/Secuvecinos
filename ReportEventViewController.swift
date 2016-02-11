//
//  ReportEventViewController.swift
//  Secuvecinos
//
//  Created by John on 10/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class ReportEventViewController: UIViewController {
    
    @IBOutlet weak var Menu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Menu.target = self.revealViewController()
        Menu.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
}