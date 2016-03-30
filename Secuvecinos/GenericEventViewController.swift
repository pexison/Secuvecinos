//
//  GenericEventViewController.swift
//  Secuvecinos
//
//  Created by John on 30/3/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class GenericEventViewController: UIViewController {
    
    @IBOutlet weak var Photo: UIImageView!
    @IBOutlet weak var Clock: UIImageView!
    @IBOutlet weak var Calendar: UIImageView!
    @IBOutlet weak var Location: UIImageView!
    @IBOutlet weak var EventType: UIImageView!
    @IBOutlet weak var State: UIImageView!
    @IBOutlet weak var Priority: UILabel!
    @IBOutlet weak var PriorityText: UILabel!
    @IBOutlet weak var TimeText: UILabel!
    @IBOutlet weak var DateText: UILabel!
    @IBOutlet weak var AddressText: UILabel!
    @IBOutlet weak var StatusText: UILabel!
    @IBOutlet weak var DescriptionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Clock.image = UIImage(named: "TimeEvent")
        Calendar.image = UIImage(named: "calendar")
        Location.image = UIImage(named: "map_marker")
        TimeText.text = "3:55pm"
        AddressText.text = "Calle Florida"
        self.title = "Hello"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}