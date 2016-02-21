//
//  ReportEventViewController.swift
//  Secuvecinos
//
//  Created by John on 12/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class ReportEventViewController: UITableViewController {
    
    @IBAction func report(sender: AnyObject) {
        let title = "Éxito"
        let message = "Se realizo el reporte con éxito"
        showAlert(sender, title: title, message: message);
    }
    
    @IBOutlet weak var foo: UILabel!
    @IBAction func cancel(sender: AnyObject) {
        let title = "Alerta"
        let message = "Seguro que no quiere realizar el reporte?"
        showAlert(sender, title: title, message: message);
    }
    
    var TableArray = [String]()
    var urgencySelected = "Media"
    
    func showAlert(sender: AnyObject, title: String, message: String) {
    
        var alertController:UIAlertController?
        alertController = UIAlertController(title: title,
            message: message,
            preferredStyle: .Alert)
       
        
        if (title=="Alerta") {
        let action = UIAlertAction(title: "Si",
            style: .Default,
            handler: { action in self.performSegueWithIdentifier("CancelReport", sender: self) })
        
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
        TableArray = ["Tipo", "Nombre", "Descripción", "Urgencia", "Posición"]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of rows in the section
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        return cell
    }
    
}

