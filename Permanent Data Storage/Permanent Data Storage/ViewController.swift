//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Eric Ross on 8/30/19.
//  Copyright © 2019 kb7td. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //UserDefaults.standard.set(42, forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String
        {
            print(name)
        }
        
        if let answer = nameObject as? Int
        {
            print(String(answer))
        }
        
        let arr = [1, 2, 3, 4]
        //UserDefaults.standard.set(arr, forKey: "array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
    }
    
    


}

