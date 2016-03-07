//
//  Event.swift
//  Secuvecinos
//
//  Created by John on 16/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class Event {
    var title: String
    var details: String
    var state: UIImage?
    var priority: String
    var timestamp: String
    var timeIcon: UIImage?
    var photo: UIImage?
    var eventType: UIImage?
    
    init?(title: String, details: String, state: UIImage?, priority: String, timestamp: String, timeIcon: UIImage?, photo: UIImage?, eventType: UIImage?) {
        // Initialize stored properties.
        self.title = title
        self.details = details
        self.state = state
        self.priority = priority
        self.timestamp = timestamp
        self.timeIcon = timeIcon
        self.photo = photo
        self.eventType = eventType
    }
    
}
