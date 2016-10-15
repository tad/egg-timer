//
//  ViewController.swift
//  Egg Timer
//
//  Created by Terry Donaghe on 9/23/16.
//  Copyright © 2016 Donaghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timeLeft = 210
    var timer = Timer()
    
    @IBOutlet weak var lblTimeLeft: UILabel!

    @IBAction func btnGo(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPause(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func btnReset(_ sender: AnyObject) {
        timeLeft = 210
        lblTimeLeft.text = "210"
    }
    
    @IBAction func btnAddTen(_ sender: AnyObject) {
        timeLeft += 10
        lblTimeLeft.text = String(timeLeft)
    }
    
    @IBAction func btnSubtractTen(_ sender: AnyObject) {
        if timeLeft - 10 > 0 {
            timeLeft -= 10
            lblTimeLeft.text = String(timeLeft)
        } else {
            timeLeft = 0
            lblTimeLeft.text = "0"
        }
    }
    
    func processTimer() {
        if timeLeft > 1 {
            timeLeft -= 1
            lblTimeLeft.text = String(timeLeft)
        } else {
            lblTimeLeft.text = "Done!!"
            timer.invalidate()
        }
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

