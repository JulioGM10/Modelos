//
//  ViewController.swift
//  TableView2
//
//  Created by MacBook on 03/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var alumnos = ["Juan","Oscar","Erick","Luis"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = alumnos[indexPath.row]
        return cell
    
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction( style: .destructive , title: "Delete") {( action, sourceview, completion) in self.alumnos.remove(at: indexPath.row)}
    }
    let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
}

