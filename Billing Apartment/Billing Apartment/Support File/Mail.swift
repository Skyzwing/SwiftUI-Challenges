//
//  Mail.swift
//  Billing Apartment
//
//  Created by Surachat Yaitammasan on 27/4/2563 BE.
//  Copyright © 2563 Surachat Yaitammasan. All rights reserved.
//

import Foundation
import MessageUI

// MARK: The mail part
class SendMail: NSObject, MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult,
                               error: Error?) {
        // Customize here
        controller.dismiss(animated: true)
    }
    
    /// Present an mail compose view controller modally in UIKit environment
    func presentMailCompose() {
        
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        let vc = UIApplication.shared.keyWindow?.rootViewController
        
        let composeVC = MFMailComposeViewController()
        composeVC.setToRecipients(["surachet.y.edu@gmail.com"])
        composeVC.setSubject("Report problem app: Billing Apartment")
        composeVC.setMessageBody("Please tell me about detail problem in here. If you're insert image problem we will repair problem is fast", isHTML: false)
        composeVC.mailComposeDelegate = self
        
        // Customize here
        
        vc?.present(composeVC, animated: true)
    }
    
}
