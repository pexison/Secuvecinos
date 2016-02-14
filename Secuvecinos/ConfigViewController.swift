//
//  ConfigViewController.swift
//  Secuvecinos
//
//  Created by John on 13/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class ConfigViewController: UITableViewController {
    
    @IBOutlet weak var Menu: UIBarButtonItem!

    @IBOutlet weak var DistanceUnit: UILabel!
    
    @IBOutlet weak var Theme: UILabel!
    
    @IBOutlet weak var VideoQuality: UILabel!
    
    var TableArray = [String]()
    var selectedDistanceUnit = "km"
    var selectedTheme = "Light"
    var selectedVideoQuality = "Alta"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Menu.target = self.revealViewController()
        Menu.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        TableArray = ["Notificaciones", "Unidades", "Tema", "Calidad de Video"]

        DistanceUnit.text = selectedDistanceUnit
        Theme.text = selectedTheme
        
        VideoQuality.text = selectedVideoQuality;
        
    }
    
    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
    }
    

    
    
}