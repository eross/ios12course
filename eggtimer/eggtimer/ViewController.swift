//
//  ViewController.swift
//  eggtimer
//
//  Created by Eric Ross on 8/25/19.
//  Copyright © 2019 kb7td. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var currentTime:Int = 0
    var running:Bool = false
    
    @IBOutlet weak var timerValue: UITextField!
    
 
    
    @objc func processTimer() {
        print("A second has passed")
        if running && currentTime > 0 {
            currentTime -= 1
        }
        timerValue.text = String(currentTime)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                     selector: #selector(ViewController.processTimer),
                                     userInfo: nil,
                                     repeats: true)
    }

    
    @IBAction func pauseTimer(_ sender: Any) {
        running = false
        timerValue.text = String(currentTime)
    }
    
    @IBAction func startTimer(_ sender: Any) {
        running = true
        timerValue.text = String(currentTime)
    }
    
    @IBAction func minus10Timer(_ sender: Any) {
        if currentTime >= 10 {
            currentTime -= 10
        } else {
            currentTime = 0
        }
        timerValue.text = String(currentTime)
    }
    
    @IBAction func plus10Timer(_ sender: Any) {
        currentTime += 10
        timerValue.text = String(currentTime)
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        running = false
        currentTime = 0
        timerValue.text = String(currentTime)
    }
    
    
}

