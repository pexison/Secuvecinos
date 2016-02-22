//
//  ReportType.swift
//  Secuvecinos
//
//  Created by John on 21/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class ReportType {
    var title: String
    var photo: UIImage?
    
    init?(title: String, photo: UIImage?) {
        // Initialize stored properties.
        self.title = title
        self.photo = photo
    }
    
}