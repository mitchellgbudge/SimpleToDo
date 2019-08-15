//
//  ToDoController.swift
//  To-Do-List
//
//  Created by Mitchell Budge on 8/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

class ToDoController {
    
    var todos: [Todo] = [Todo(title: "Walk the dog", body: "Be sure to walk the dog every day at noon!")]
    
    func createToDo(with todo: Todo) {
        todos.append(todo)
    }
    
}
