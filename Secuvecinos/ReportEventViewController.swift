//
//  ReportEventViewController.swift
//  Secuvecinos
//
//  Created by John on 12/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class ReportEventViewController: UITableViewController {
    
    var ReportTypes = [ReportType]()
    
    func loadSampleTypes() {
        let illegal_parking = UIImage(named: "no_parking")!
        let type1 = ReportType(title: "Aparcado ilegal", photo: illegal_parking)!
        let pothole = UIImage(named: "pothole.png")!
        let type2 = ReportType(title: "Hueco en la vía", photo: pothole)!
        let garbage = UIImage(named: "litter_disposal")!
        let type3 = ReportType(title: "Basura en la calle", photo: garbage)!
        let traffic_light = UIImage(named: "traffic_light")!
        let type4 = ReportType(title: "Semáforo dañado", photo: traffic_light)!
        let grafitti = UIImage(named: "grafitti")!
        let type5 = ReportType(title: "Grafitti", photo: grafitti)!
        let other = UIImage(named: "question_mark")!
        let type6 = ReportType(title: "Otros", photo: other)!
        

        ReportTypes += [type1, type2, type3, type4, type5, type6]
    }
   
    @IBAction func cancel(sender: AnyObject) {
        
        showAlert(self, title: "Alerta", message: "Desea descartar los cambios?")
    }
    
    /*@IBAction func report(sender: AnyObject) {
        let title = "Éxito"
        let message = "Se realizo el reporte con éxito"
        showAlert(sender, title: title, message: message);
    }*/
    
    /*@IBAction func cancel(sender: AnyObject) {
        let title = "Alerta"
        let message = "Seguro que no quiere realizar el reporte?"
        showAlert(sender, title: title, message: message);
    }*/
    
    //var TableArray = [String]()
    var urgencySelected = "Media"
    
    func showAlert(sender: AnyObject, title: String, message: String) {
    
        var alertController:UIAlertController?
        alertController = UIAlertController(title: title,
            message: message,
            preferredStyle: .Alert)
       
        
        if (title=="Alerta") {
        let action = UIAlertAction(title: "Si",
            style: .Default,
            handler: { action in self.navigationController?.popViewControllerAnimated(true) })
        
        let action2 = UIAlertAction(title: "No",
            style: UIAlertActionStyle.Default,
            handler: nil)
        
        alertController?.addAction(action2)
        alertController?.addAction(action)
        } else {
            let action = UIAlertAction(title: "Ok",
            style: .Default,
            handler: { action in self.performSegueWithIdentifier("CancelReport", sender: self) })
            alertController?.addAction(action)
        }
        
        self.presentViewController(alertController!,
            animated: true,
            completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //TableArray = ["Tipo", "Nombre", "Descripción", "Urgencia", "Posición"]
        loadSampleTypes()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of rows in the section
        return ReportTypes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(ReportTypes[indexPath.row].title, forIndexPath: indexPath) as! ReportTypeCell


        cell.title.text = ReportTypes[indexPath.row].title
        cell.photo.image = ReportTypes[indexPath.row].photo
        return cell
    }
    
    
}

