//
//  EventTableViewController.swift
//  Secuvecinos
//
//  Created by John on 16/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {

    var Events = [Event]()
    
    func loadSampleEvents() {
        let photo1 = UIImage(named: "Event1.jpg")!
        let status1 = UIImage(named: "OpenEvent.jpg")!
        let clockIcon = UIImage(named: "TimeEvent.jpg")
        let eventType1 = UIImage(named: "question_mark")
        let event1 = Event(title: "Bote de Agua", details: "Cerca de la Av. Camino Real se encuentra un bote de agua de un hidrante dañado que necesita reparación con urgencia.", state: status1, priority: "!!!", timestamp: "hace 10 minutos", timeIcon: clockIcon, photo: photo1, eventType: eventType1)!
        
        let photo2 = UIImage(named: "Event2.jpg")!
        let status2 = UIImage(named: "ClosedEvent.jpg")!
        let eventType2 = UIImage(named: "grafitti")
        let event2 = Event(title: "Grafitti en edificio", details: "En el edificio Coromon hay un grafitti que lee 'Baño' en letras azules.", state: status2, priority: "!!", timestamp: "hace 1 hora", timeIcon: clockIcon, photo: photo2, eventType: eventType2)!
        
        
        Events += [event1, event2]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.loadSampleEvents()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Events.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Events[indexPath.row].title, forIndexPath: indexPath) as! NewsEventCell
        
        // Configure the cell...
        
        cell.title.text = Events[indexPath.row].title
        cell.details.text = Events[indexPath.row].details
        cell.state.image = Events[indexPath.row].state
        cell.priority.text = Events[indexPath.row].priority
        cell.timestamp.text = Events[indexPath.row].timestamp
        cell.timeIcon.image = Events[indexPath.row].timeIcon
        cell.photo.image = Events[indexPath.row].photo
        cell.eventType.image = Events[indexPath.row].eventType

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
