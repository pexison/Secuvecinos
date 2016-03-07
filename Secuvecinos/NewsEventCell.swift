//
//  NewsEventCell.swift
//  Secuvecinos
//
//  Created by John on 16/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class NewsEventCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var state: UIImageView!
    @IBOutlet weak var priority: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var timeIcon: UIImageView!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var eventType: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
