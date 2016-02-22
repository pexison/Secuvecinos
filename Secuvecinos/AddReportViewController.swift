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
    
    var Table : [String] = ["Ubicación", "Descripción", "Prioridad"]
    
    var selectedPriority = "Media"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource = self
        tableview.delegate = self

        
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
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Table[indexPath.row], forIndexPath: indexPath)
        cell.textLabel?.text = Table[indexPath.item]
        if Table[indexPath.row] == "Prioridad" {
            cell.detailTextLabel?.text = selectedPriority
        }
        
        return cell
    }
    
    
}
