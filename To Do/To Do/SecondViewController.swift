//
//  SecondViewController.swift
//  To Do
//
//  Created by Eric Ross on 8/31/19.
//  Copyright © 2019 kb7td. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addItem(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let tempItems = itemsObject as? [String]
        {
            items = tempItems
            items.append(itemTextField.text!)
        } else {
            items = [itemTextField.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        
        itemTextField.text = ""
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    
}

