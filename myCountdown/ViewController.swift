//
//  ViewController.swift
//  myCountdown
//
//  Created by Peter Bohnert on 11/2/14.
//  Copyright (c) 2014 Blue Lotus Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MZTimerLabelDelegate {
    
    @IBOutlet weak var myOutputLabel: UILabel!
    @IBOutlet weak var myCountdownLabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mycountdownTimer = MZTimerLabel(label: myCountdownLabel, andTimerType: MZTimerLabelTypeTimer)
        
        myOutputLabel.text = ""
        

        // Do any additional setup after loading the view, typically from a nib.
    
        // see also: http://stackoverflow.com/questions/25108919/how-to-re-write-objective-c-delegate-method-in-swift
        
        var totalTimetoNapInSeconds:NSTimeInterval = 20
        
        mycountdownTimer.timeLabel.textColor = UIColor.blueColor()
        mycountdownTimer.setCountDownTime(totalTimetoNapInSeconds)
        mycountdownTimer.delegate = self
        mycountdownTimer.start()
        
    }
    
    func timerLabel(timerLabel: AnyObject!, finshedCountDownTimerWithTime countTime: NSTimeInterval){
        println("in my delegate routine")
        //self.myOutputLabel.text = "All Done!  How was your nap?"
        //self.myOutputLabel.textColor = UIColor.redColor()
        
        //load "all done" VC
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("AllDoneViewController") as UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

