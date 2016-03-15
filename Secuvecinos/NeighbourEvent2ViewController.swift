//
//  NeighbourEvent2ViewController.swift
//  Secuvecinos
//
//  Created by John on 15/3/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit
import MapKit
import AddressBook


class NeighbourEvent2ViewController: UIViewController {
    
    @IBOutlet weak var Photo: UIImageView!
    @IBOutlet weak var Clock: UIImageView!
    @IBOutlet weak var Calendar: UIImageView!
    @IBOutlet weak var Location: UIImageView!
    @IBOutlet weak var EventType: UIImageView!
    @IBOutlet weak var State: UIImageView!
    

    let addressDictionary = [String(kABPersonAddressStreetKey): "Prueba"]
    var selectedPin:MKPlacemark? = MKPlacemark(coordinate: CLLocationCoordinate2DMake(10.422560, -66.826183), addressDictionary: nil)
    
    @IBAction func searchRouteEvent2(sender: AnyObject) {
        if let selectedPin = selectedPin {
            let mapItem = MKMapItem(placemark: selectedPin)
            let launchOptions = [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving]
            mapItem.openInMapsWithLaunchOptions(launchOptions)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Photo.image = UIImage(named: "Event2")
        Clock.image = UIImage(named: "TimeEvent")
        Calendar.image = UIImage(named: "calendar")
        Location.image = UIImage(named: "map_marker")
        EventType.image = UIImage(named: "grafitti")
        State.image = UIImage(named: "ClosedEvent")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
