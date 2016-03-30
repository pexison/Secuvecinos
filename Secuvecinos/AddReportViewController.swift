//
//  AddReportViewController.swift
//  Secuvecinos
//
//  Created by John on 21/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class AddReportViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    let image : UIImage = UIImage(named: "Event1")!
    var Table : [String] = ["Ubicación", "Descripción", "Prioridad", "Foto"]
    
    var selectedEvent = ""
    
    var selectedPriority = "Media"
    var selectedLocation = ""
    var selectedImage = UIImage(named: "Event1")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource = self
        tableview.delegate = self
        //imageViewReportEvent.image = image
        print(self.selectedEvent)
        self.title = self.selectedEvent
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableview.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Table.count // your number of cell here
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // your cell coding
        

        
        if Table[indexPath.row] == "Descripción" {
            let cell = tableView.dequeueReusableCellWithIdentifier(Table[indexPath.row], forIndexPath: indexPath) as! EventDescriptionCell
            cell.DescriptionLabel.text = "Descripción"
            cell.DescriptionText.text = cell.textDescription
            print (cell.textDescription)
            return cell
        } else if Table[indexPath.row] == "Foto" {
            let cell = tableView.dequeueReusableCellWithIdentifier(Table[indexPath.row], forIndexPath: indexPath) as! EventPhotoCell
            cell.EventPhoto.image = selectedImage
            return cell
        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Table[indexPath.row], forIndexPath: indexPath)
        
        cell.textLabel?.text = Table[indexPath.item]
        if Table[indexPath.row] == "Prioridad" {
            cell.detailTextLabel?.text = selectedPriority
        } else if Table[indexPath.row] == "Ubicación" {
            cell.detailTextLabel?.text = selectedLocation
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 3 {
            return 170
        } else if indexPath.row == 1 {
            return 120
        } else{
            return 44
        }
    }
    
}
