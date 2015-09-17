//
//  ActionActivity.swift
//  CustomActivity
//
//  Created by Victor Chee on 15/7/29.
//  Copyright (c) 2015年 Victor Chee. All rights reserved.
//

import UIKit

class ActionActivity: UIActivity {
    var title: String?
    var image: UIImage?
    var url: NSURL?
    
    override class func activityCategory() -> UIActivityCategory {
        return .Action
    }
    
    override func activityType() -> String? {
        return String(self)
    }
    
    override func activityTitle() -> String? {
        return "Action"
    }
    
    override func activityImage() -> UIImage? {
        return UIImage(named: "logo")
    }
    
    override func canPerformWithActivityItems(activityItems: [AnyObject]) -> Bool {
        return true
    }
    
    override func prepareWithActivityItems(activityItems: [AnyObject]) {
        for item in activityItems {
            if item is String {
                title = item as? String
            } else if item is UIImage {
                image = item as? UIImage
            } else if item is NSURL {
                url = item as? NSURL
            }
        }
    }
    
    override func performActivity() {
        print("action: \(title) & \(url)", terminator: "")
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.activityDidFinish(true)
        })
    }
}