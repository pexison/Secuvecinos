//
//  UsuarioViewController.swift
//  Secuvecinos
//
//  Created by John on 10/2/16.
//  Copyright © 2016 John. All rights reserved.
//

import UIKit

class UserViewController: UITableViewController {

    @IBOutlet weak var Menu: UIBarButtonItem!

    var TableArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Menu.target = self.revealViewController()
        Menu.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        TableArray = ["Nombre", "Correo", "Teléfono", "Contraseña", "Seleccionar Foto"]
        
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
