//
//  InterfaceController.swift
//  SendImage WatchKit Extension
//
//  Created by KOHAMA TAKUYA on 3/27/15.
//  Copyright (c) 2015 KOHAMA TAKUYA. All rights reserved.
//

import WatchKit
import Foundation
import WatchCoreDataProxy


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var profileImage: WKInterfaceImage!

    @IBOutlet weak var profileName: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        WatchCoreDataProxy.sharedInstance.sharedAppGroup = "group.matcho3tk.sendImage"
        
        let image = WatchCoreDataProxy.sharedInstance.receiveImage()
        let name = WatchCoreDataProxy.sharedInstance.receiveString()
        
        profileImage.setImage(image)
        profileName.setText(name as? String)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}