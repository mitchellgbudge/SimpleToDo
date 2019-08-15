//
//  DetailToDoViewController.swift
//  To-Do-List
//
//  Created by Mitchell Budge on 8/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class DetailToDoViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var todo: Todo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let todo = todo else { return }
        titleTextField.text = todo.title
        bodyTextView.text = todo.body
    }
    
}
