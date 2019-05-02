//
//  fieldObservationTableViewController.swift
//  Field Observation
//
//  Created by Jonathan Yee on 5/2/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import UIKit

class fieldObservationTableViewController: UITableViewController {
    
    var dateFormatter = DateFormatter()
    
    let jsonFileName = "fieldObservation"
    var subjects: subjects?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        subjects = jsonparser.load(jsonFileName: jsonFileName)
        
        if subjects == nil {
            presentMessage(message: "Unable to load and parse \(jsonFileName).json")
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return subjects?.observations.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observedCell", for: indexPath)
        
        if let cell = cell as? fieldObservarionTableViewCell,
            let subject = subjects?.observations[indexPath.row]{
                cell.subjectImage.image = UIImage(named: subject.classification.rawValue)
                cell.name.text = subject.title
                cell.date.text = dateFormatter.string(from: subject.date)
        }
        
        
        
        // Configure the cell...

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? fieldOberservationViewController,
            let selectedIndexPath = tableView.indexPathForSelectedRow {
            destination.subject = subjects?.observations[selectedIndexPath.row]
        }
    }
    
    func presentMessage(message: String) {
        print(message)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
