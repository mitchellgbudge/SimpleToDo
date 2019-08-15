//
//  ToDosTableViewController.swift
//  To-Do-List
//
//  Created by Mitchell Budge on 8/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class ToDosTableViewController: UITableViewController {
    
    var todoController = ToDoController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoController.todos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        let todo = todoController.todos[indexPath.row]
        cell.textLabel?.text = todo.title
        return cell
    }
    

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

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let detailVC = segue.destination as? DetailToDoViewController else { return }
            detailVC.todo = todoController.todos[indexPath.row]
        }
    }
    

}
