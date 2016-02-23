//
//  UrgencySelectorViewController.swift
//  Secuvecinos
//
//  Created by John on 20/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class UrgencySelectorViewController: UITableViewController {
    
    let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64( 1 * Double(NSEC_PER_SEC)))
    
    var TableArray = [String]()
    var selectedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableArray = ["Alta", "Media", "Baja"]
        selectedRow = 0
        
    }
    
    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of rows in the section
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = TableArray[indexPath.row]
        return cell
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
//        print("Entreeeee")
//        var cell = self.tableView.cellForRowAtIndexPath(indexPath)
//        cell!.accessoryType = .Checkmark
        let section = indexPath.section
        let numberOfRows = tableView.numberOfRowsInSection(section)
        for row in 0..<numberOfRows {
            if let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: row, inSection: section)) {
                cell.accessoryType = row == indexPath.row ? .Checkmark : .None
            }
        }
        selectedRow = indexPath.row
        
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.performSegueWithIdentifier("PrioritySelected", sender: self)
        }
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : AddReportViewController = segue.destinationViewController as! AddReportViewController;
        switch(selectedRow) {
            case 0:
                DestViewController.selectedPriority = "Alta";
            case 1:
                DestViewController.selectedPriority = "Media";
            case 2:
                DestViewController.selectedPriority = "Baja";
        default:
            print("None")
        }
    }
    
}
