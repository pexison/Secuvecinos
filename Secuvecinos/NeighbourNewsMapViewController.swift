//
//  NeighbourNewsMapViewController.swift
//  Secuvecinos
//
//  Created by John on 15/3/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit
import MapKit
import AddressBook

class NeighbourNewsMapViewController: UIViewController {
    
    @IBOutlet weak var MapView: MKMapView!
    
    var selectedAnnotation:MKAnnotation?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Map
        let event1Location = CLLocationCoordinate2DMake(10.422913, -66.823761)
        let event2Location = CLLocationCoordinate2DMake(10.422560, -66.826183)
        
        //let USBLocation = CLLocation(latitude: 10.409297, longitude: -66.883061)
        let initialLocation = CLLocation(latitude: 10.423177, longitude: -66.824852)
        centerMapOnLocation(initialLocation)
        
        let annotationView = MKAnnotationView()
        let detailButton: UIButton = UIButton(type: UIButtonType.DetailDisclosure) as UIButton
        annotationView.rightCalloutAccessoryView = detailButton
        
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "NeighbourEvent1DetailsSelected" {
            let DestViewController : NeighbourEvent1ViewController = segue.destinationViewController as! NeighbourEvent1ViewController
            DestViewController.selectedAnnotation = self.selectedAnnotation!
        } else if segue.identifier == "NeighbourEvent2DetailsSelected" {
            let DestViewController : NeighbourEvent2ViewController = segue.destinationViewController as! NeighbourEvent2ViewController
            DestViewController.selectedAnnotation = self.selectedAnnotation!
        }
        
    }
    
    func makeSegueEvent1() {
        self.performSegueWithIdentifier("NeighbourEvent1DetailsSelected", sender: self)
    }
    
    func makeSegueEvent2() {
        self.performSegueWithIdentifier("NeighbourEvent2DetailsSelected", sender: self)
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

extension NeighbourNewsMapViewController : MKMapViewDelegate {
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            //return nili so map view draws "blue dot" for standard user location
        }
        let reuseId = "pin"
        var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId) as? MKPinAnnotationView
        pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
        pinView?.pinTintColor = UIColor.redColor()
        pinView?.canShowCallout = true
        let button = UIButton(type: .DetailDisclosure) as UIButton
        if annotation.title! == "Bote de Agua" {
            button.addTarget(self, action: "makeSegueEvent1", forControlEvents: .TouchUpInside)
        } else if annotation.title! == "Grafitti en edificio" {
            button.addTarget(self, action: "makeSegueEvent2", forControlEvents: .TouchUpInside)
        }
        pinView?.rightCalloutAccessoryView = button
        return pinView
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        self.selectedAnnotation = view.annotation!
    }
    
    func mapView(mapView: MKMapView, didSelectAnnotationView view: MKAnnotationView) {
        self.selectedAnnotation = view.annotation!
    }
    
}