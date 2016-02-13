//
//  NewsViewController.swift
//  Secuvecinos
//
//  Created by John on 12/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit
import MapKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var Menu: UIBarButtonItem!
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Menu.target = self.revealViewController()
        Menu.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
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
