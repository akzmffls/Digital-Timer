//
//  ViewController.swift
//  Digital Timer
//
//  Created by D7703_14 on 2018. 4. 10..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var TimerSwich: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TimerSwich.setOn(false, animated: true)
    }
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        lbl.text = formatter.string(from: date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func timerStrat(_ sender: Any) {
        if TimerSwich.isOn == true {
            
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()
                
            })
        } else {
            myTimer.invalidate()
        }
    

}

}
