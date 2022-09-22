//
//  ViewController.swift
//  TimerProject
//
//  Created by Gappze on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
     var counter = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        counter = 10
        timeLabel.text = "Time:   \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeTime), userInfo: nil
                                     , repeats: true)
   
    }
    @objc func changeTime () {
        
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        
        if counter == 0 {
            
            timer.invalidate()
            timeLabel.text = "Time's over!"
            
            }
        
      
        
        
        
        
        
        
    }
    
    
    

}

