//
//  EventPhotoCell.swift
//  Secuvecinos
//
//  Created by John on 6/3/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class EventPhotoCell: UITableViewCell {
    
    @IBOutlet weak var EventPhoto: UIImageView!
    
    @IBOutlet weak var SelectPhoto: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
