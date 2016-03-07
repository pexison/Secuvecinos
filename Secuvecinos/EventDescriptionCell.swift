//
//  EventDescriptionCell.swift
//  Secuvecinos
//
//  Created by John on 6/3/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class EventDescriptionCell: UITableViewCell, UITextViewDelegate {
    
    @IBOutlet weak var DescriptionLabel: UILabel!

    @IBOutlet weak var DescriptionText: UITextView!
    
    var textDescription = "Escriba la descripción acá"
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        DescriptionText.delegate = self
        
        
        DescriptionText.text = textDescription
      
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
        
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        textView.text = ""
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        textDescription = textView.text
    }
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
}