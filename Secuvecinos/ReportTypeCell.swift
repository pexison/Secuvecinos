//
//  ReportTypeCell.swift
//  Secuvecinos
//
//  Created by John on 21/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class ReportTypeCell: UITableViewCell {

    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}