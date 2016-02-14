//
//  ConfigThemeViewController.swift
//  Secuvecinos
//
//  Created by John on 14/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class ConfigThemeViewController: UITableViewController {
    
    let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64( 1 * Double(NSEC_PER_SEC)))
    
    var TableArray = [String]()
    var selectedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableArray = ["Light", "Dark", "Nature"]
        selectedRow = 0
        
        
    }
    
    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of rows in the section
        return TableArray.count
    }
    
    
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        if  (cell != nil) {
            if cell!.accessoryType != .None
            {
                cell!.accessoryType = .None
            }
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let section = indexPath.section
        let numberOfRows = tableView.numberOfRowsInSection(section)
        for row in 0..<numberOfRows {
            if let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: row, inSection: section)) {
                cell.accessoryType = row == indexPath.row ? .Checkmark : .None
            }
        }
        selectedRow = indexPath.row
        
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.performSegueWithIdentifier("ThemeSelected", sender: self)
        }
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : ConfigViewController = segue.destinationViewController as! ConfigViewController;
        
        switch selectedRow {
            case 0: DestViewController.selectedTheme = "Light"
            case 1: DestViewController.selectedTheme = "Dark"
            case 2: DestViewController.selectedTheme = "Nature"
            default: DestViewController.selectedTheme = ""
        }
    }
    
}
