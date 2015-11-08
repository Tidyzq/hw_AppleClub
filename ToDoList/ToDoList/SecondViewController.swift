//
//  SecondViewController.swift
//  hw_ToDoList
//
//  Created by Tidyzq on 15/11/8.
//  Copyright © 2015年 Tidyzq. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var todoText: UITextField!
    
    @IBOutlet weak var descText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addBtnClick(sender: AnyObject) {
        todoManager.addTask(todoText.text!, desc: descText.text!)
        self.view.endEditing(true)
        todoText.text?.removeAll()
        todoText.text?.removeAll()
        self.tabBarController?.selectedIndex = 0;
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}

