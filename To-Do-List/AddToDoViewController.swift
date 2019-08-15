//
//  AddToDoViewController.swift
//  To-Do-List
//
//  Created by Mitchell Budge on 8/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    var todoController = ToDoController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let title = titleTextField.text,
        let body = bodyTextView.text else { return }
        let todo = Todo(title: title, body: body)
        todoController.createToDo(with: todo)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
