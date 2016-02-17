//
//  Event2ViewController.swift
//  Secuvecinos
//
//  Created by John on 17/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class Event2ViewController: UIViewController {
    
    @IBOutlet weak var Photo: UIImageView!
    @IBOutlet weak var Clock: UIImageView!
    @IBOutlet weak var Calendar: UIImageView!
    @IBOutlet weak var Location: UIImageView!
    @IBOutlet weak var GotoMap: UIImageView!
    @IBOutlet weak var State: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Photo.image = UIImage(named: "Event2")
        Clock.image = UIImage(named: "TimeEvent")
        Calendar.image = UIImage(named: "calendar")
        Location.image = UIImage(named: "map_marker")
        GotoMap.image = UIImage(named: "street_view")
        State.image = UIImage(named: "ClosedEvent")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}