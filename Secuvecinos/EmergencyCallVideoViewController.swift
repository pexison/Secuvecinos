//
//  EmergencyCallVideoViewController.swift
//  Secuvecinos
//
//  Created by John on 14/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit
import MapKit

class EmergencyCallVideoViewController: UIViewController {
    
    @IBOutlet weak var MapView: MKMapView!
    
    @IBAction func hangUpVideoCall(sender: AnyObject) {
        var alertController:UIAlertController?
        alertController = UIAlertController(title: "Alerta",
            message: "Seguro que desea finalizar la llamada?",
            preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "Si",
            style: .Default,
            handler: { action in self.performSegueWithIdentifier("HangUpVideoCall", sender: self) })
        
        let action2 = UIAlertAction(title: "No",
            style: .Default,
            handler: nil)
        
        alertController?.addAction(action)
        alertController?.addAction(action2)
        self.presentViewController(alertController!,
            animated: true,
            completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Map
        let initialLocation = CLLocation(latitude: 10.409297, longitude: -66.883061)
        centerMapOnLocation(initialLocation)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let regionRadius: CLLocationDistance = 500
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        MapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}