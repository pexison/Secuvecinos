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
        
        let photo3 = UIImage(named: "Event3.jpg")!
        let status3 = UIImage(named: "OpenEvent.jpg")!
        let eventType3 = UIImage(named: "no_parking")
        let event3 = Event(title: "Aparcado Ilegal", details: "Una persona desconsiderada dejó su carro parado en el paso peatonal.", state: status3, priority: "!", timestamp: "hace 5 horas", timeIcon: clockIcon, photo: photo3, eventType: eventType3)!
        
        let photo4 = UIImage(named: "Event4.jpg")!
        let status4 = UIImage(named: "OpenEvent.jpg")!
        let eventType4 = UIImage(named: "pothole")
        let event4 = Event(title: "Hueco en la vía", details: "En la calle Júpiter hay un hueco en el medio del canal.", state: status4, priority: "!!!", timestamp: "hace 10 horas", timeIcon: clockIcon, photo: photo4, eventType: eventType4)!
        
        let photo5 = UIImage(named: "Event5.jpg")!
        let status5 = UIImage(named: "OpenEvent.jpg")!
        let eventType5 = UIImage(named: "litter_disposal")
        let event5 = Event(title: "Basura en la calle", details: "En la urbanización Venezuela hay basura cerca de los contenedores que causa mal olor.", state: status5, priority: "!!", timestamp: "hace 1 día", timeIcon: clockIcon, photo: photo5, eventType: eventType5)!
        
        let photo6 = UIImage(named: "Event6.jpg")!
        let status6 = UIImage(named: "ClosedEvent.jpg")!
        let eventType6 = UIImage(named: "traffic_light")
        let event6 = Event(title: "Semáforo dañado", details: "En la intersección entre las calles Soto y Sucre hay un semáforo dañado que dificulta el tránsito.", state: status6, priority: "!!!", timestamp: "hace 2 días", timeIcon: clockIcon, photo: photo6, eventType: eventType6)!
        
        Events += [event1, event2, event3, event4, event5, event6]
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
        let cell = tableView.dequeueReusableCellWithIdentifier("custom_event_cell", forIndexPath: indexPath) as! NewsEventCell
        
        // Configure the cell...
        
        cell.title.text = Events[indexPath.row].title
        cell.details.text = Events[indexPath.row].details
        cell.state.image = Events[indexPath.row].state
        cell.priority.text = Events[indexPath.row].priority
        if cell.priority.text == "!!!" {
            print("!!!")
            cell.priority.textColor = UIColor.redColor()
        } else if cell.priority.text == "!!" {
            print("!!")
            cell.priority.textColor = UIColor.orangeColor()
        } else {
            print("!")
            cell.priority.textColor = UIColor.yellowColor()
        }
        cell.timestamp.text = Events[indexPath.row].timestamp
        cell.timeIcon.image = Events[indexPath.row].timeIcon
        cell.photo.image = Events[indexPath.row].photo
        cell.eventType.image = Events[indexPath.row].eventType
        cell.eventType.tintColor = UIColor.blueColor()

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if Events[indexPath.row].title == "Bote de Agua" {
            self.performSegueWithIdentifier("selectedEvent1", sender: self)
        } else {
            self.performSegueWithIdentifier("selectedEvent2", sender: self)
        }
    }


}
