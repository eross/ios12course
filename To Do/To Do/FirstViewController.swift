//
//  FirstViewController.swift
//  To Do
//
//  Created by Eric Ross on 8/31/19.
//  Copyright © 2019 kb7td. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var items:[String] = []
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        var cellLabel = "NIL"
        
        cellLabel = items[indexPath.row]
    
        cell.textLabel?.text = cellLabel
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
      

    }
    
    override func viewDidAppear(_ animated: Bool) {
        let itemObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemObject as? [String]
        {
            items = tempItems
        }
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            items.remove(at: indexPath.row)
        }
        UserDefaults.standard.set(items,forKey: "items")
        table.reloadData()
        
    }
}

