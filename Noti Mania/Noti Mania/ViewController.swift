//
//  ViewController.swift
//  Noti Mania
//
//  Created by Timothy M Shepard on 11/8/17.
//  Copyright © 2017 Timothy. All rights reserved.
//

import UIKit
import UserNotifications


class ViewController: UIViewController {

    @IBAction func action(_ sender: Any)
    {
        let content = UNMutableNotificationContent()
        content.title = "The 5 seconds are up."
        content.subtitle = "Subtitle: They are up now."
        content.body = "This is the body of the notification.  The 5 seconds are really up."
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "Timer Request Done", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: { didAllow, error in
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

