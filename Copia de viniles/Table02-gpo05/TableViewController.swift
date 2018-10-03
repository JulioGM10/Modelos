//
//  TableViewController.swift
//  Table02-gpo05
//
//  Created by Germán Santos Jaimes on 3/13/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //var productos = [brownies,bagels,butter]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem

    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return discos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCell

        cell.textLabel?.text = discos[indexPath.row].nombre
        cell.imageView?.image = UIImage(named: discos[indexPath.row].imagen)
        cell.label.text = ("$\(discos[indexPath.row].precio)")
        

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        let celdaNueva = tableView.cellForRow(at: indexPath)
//        
//        let yesClosure = {(_ action: UIAlertAction) -> Void in
//            celdaNueva?.accessoryType = .checkmark
//        }
//        
//        let noClosure = {(_ action: UIAlertAction) -> Void in
//            celdaNueva?.accessoryType = .none
//        }
//        
//        
//        let optionController = UIAlertController(title: "¿Lo comprará?", message: "Rico pan", preferredStyle: .alert)
//        
//        let yesAction = UIAlertAction(title: "Si", style: .default, handler: yesClosure)
//        
//        
//        let noAction = UIAlertAction(title: "No", style: .cancel, handler: noClosure)
//        
//        
//        optionController.addAction(yesAction)
//        optionController.addAction(noAction)
//        
//        present(optionController, animated: true, completion: nil)
//    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            discos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let shareAction = UIContextualAction(style: .normal, title: "Compartir") { (action, sourcview, completion) in
            
            let defaultText = "Compartiendo mis compras"
            
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            
            self.present(activityController, animated: true, completion: nil)
            
            completion(true)
        }
        
        shareAction.backgroundColor = .green
        //shareAction.image = UIImage(named: "butter")
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [shareAction])

        return swipeConfiguration
    }
    
    

//
//     //Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
 

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailView"{
            if let indexPath = tableView.indexPathForSelectedRow{
                _ = segue.destination as! DetailViewController
                //detail.productos = panes[indexPath.row].nombre
                IndexP = indexPath.row
            }
        }
        
    }
    

}
