//
//  ThirdInterfaceController.swift
//  RecominderWatch Extension
//
//  Created by ✨💖Erica Naglik💖✨ on 3/23/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import WatchKit
import Foundation

class ThirdInterfaceController: WKInterfaceController {
    @IBOutlet weak var waterRings: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        // Animate the Water consumption progress bar
        
        waterRings.setImageNamed("water-")
        waterRings.startAnimatingWithImages(in: NSMakeRange(0,21), duration: 2, repeatCount: 1)
        
        
    }
}
