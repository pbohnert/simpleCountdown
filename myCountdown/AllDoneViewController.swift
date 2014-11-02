//
//  AllDoneViewController.swift
//  myCountdown
//
//  Created by Peter Bohnert on 11/2/14.
//  Copyright (c) 2014 Blue Lotus Labs. All rights reserved.
//

import UIKit

class AllDoneViewController: UIViewController {
    @IBOutlet weak var allDoneLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.allDoneLabel.text = "How was your Nap?"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
