//
//  TodoManager.swift
//  hw_ToDoList
//
//  Created by Tidyzq on 15/11/8.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import UIKit

var todoManager: TodoManager = TodoManager()

struct todo {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TodoManager: NSObject {
    
    var todos = [todo]()
    
    func addTask(name: String, desc: String) {
        todos.append(todo(name: name, desc: desc))
    }
    
}
