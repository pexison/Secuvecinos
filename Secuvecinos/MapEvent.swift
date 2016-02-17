//
//  MapEvent.swift
//  Secuvecinos
//
//  Created by John on 17/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import Foundation
import MapKit

class MapEvent: NSObject, MKAnnotation {
    let title: String?
    let timestamp: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, timestamp: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.timestamp = timestamp
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return timestamp
    }
}