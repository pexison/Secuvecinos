//
//  ReportEventMapViewController.swift
//  Secuvecinos
//
//  Created by John on 20/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit
import MapKit

class ReportEventMapViewController: UIViewController {
    
    @IBOutlet weak var MapView: MKMapView!
    
    @IBAction func showSearchBar(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let USBLocation = CLLocation(latitude: 10.409297, longitude: -66.883061)
        let initialLocation = CLLocation(latitude: 10.423177, longitude: -66.824852)
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