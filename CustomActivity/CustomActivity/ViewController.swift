//
//  ViewController.swift
//  CustomActivity
//
//  Created by Victor Chee on 15/7/29.
//  Copyright (c) 2015年 Victor Chee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityViewController: UIActivityViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let shareActivity = ShareActivity()
        let actionActivity = ActionActivity()
        activityViewController = UIActivityViewController(activityItems: ["message", NSURL(string: "http://victorchee.github.io")!], applicationActivities: [shareActivity, actionActivity])
        activityViewController.excludedActivityTypes = [UIActivityTypePrint, UIActivityTypeAssignToContact]
    }

    @IBAction func buttonTapped(sender: UIButton) {
        self.presentViewController(activityViewController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

