//
//  ViewController.swift
//  stoptime
//
//  Created by D7703_23 on 2018. 4. 9..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var count = 0
     var mytimer = Timer()
     var time  = 0
    @IBOutlet weak var timelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func updateTime(){
        count = count + 1
        let min = count / 60 / 100
        let sec = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sec * 100)
        timelabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
    }
    
    @IBAction func start(_ sender: Any) {
        mytimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block:{ (mytimer) in self.updateTime()})
    }
    @IBAction func stop(_ sender: Any) {
        mytimer.invalidate()
    }
    
    @IBAction func zreo(_ sender: Any) {
       count = 0
        timelabel.text = "00:00:00"
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

