//
//  ViewController.swift
//  Timer
//
//  Created by Shashikant Jagtap on 07/12/2016.
//  Copyright © 2016 Shashikant Jagtap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func resetTimer(_ sender: Any) {
       let time = 0
       timerLabel.text = String(time)
        timer.invalidate()
    }
    func incrementTimer() {
        time += 1
        timerLabel.text = String(time)
        
    }
    
    @IBAction func PlayButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.incrementTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        
        timer.invalidate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

