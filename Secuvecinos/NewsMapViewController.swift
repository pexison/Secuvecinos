//
//  NewsMapViewController.swift
//  Secuvecinos
//
//  Created by John on 14/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit
import MapKit

class NewsMapViewController: UIViewController {
    
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Map
        let event1Location = CLLocationCoordinate2DMake(10.422913, -66.823761)
        let event2Location = CLLocationCoordinate2DMake(10.422560, -66.826183)
        
        //let USBLocation = CLLocation(latitude: 10.409297, longitude: -66.883061)
        let initialLocation = CLLocation(latitude: 10.423177, longitude: -66.824852)
        centerMapOnLocation(initialLocation)
  
        
        // Drop pin event 1
        let pinEvent1 = MKPointAnnotation()
        pinEvent1.coordinate = event1Location
        pinEvent1.title = "Bote de Agua"
        pinEvent1.subtitle = "hace 1 hora"
        MapView.addAnnotation(pinEvent1)
        
        // Drop pin event 2
        let pinEvent2 = MKPointAnnotation()
        pinEvent2.coordinate = event2Location
        pinEvent2.title = "Grafitti en edificio"
        pinEvent2.subtitle = "hace 10 minutos"
        MapView.addAnnotation(pinEvent2)
        
        
        
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