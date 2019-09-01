//
//  ViewController.swift
//  Remember PhoneNum
//
//  Created by Eric Ross on 8/30/19.
//  Copyright © 2019 kb7td. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentNumber: UILabel!
    @IBOutlet weak var newNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentNumber.text = "XXX-XXX-XXXX"
        let numObject = UserDefaults.standard.object(forKey: "phone")
        if let num = numObject as? String
        {
            currentNumber.text = num
        }
    }

    @IBAction func rememberPress(_ sender: Any) {
        currentNumber.text = newNumber.text
        UserDefaults.standard.set(newNumber.text, forKey: "phone")
    }
    
    
}

