//
//  BackTableViewController.swift
//  Secuvecinos
//
//  Created by John on 10/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class BackTableViewController: UITableViewController {

    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Usuario","Noticias","Reportar evento","Llamar a emergencias", "Configuración"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        return cell
    }
    
}
