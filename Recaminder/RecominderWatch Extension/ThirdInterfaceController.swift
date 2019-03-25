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
    
    
    


    @IBOutlet weak var waterRings: WKInterfaceGroup!
    @IBOutlet weak var waterDrankLabel: WKInterfaceLabel!
    @IBOutlet weak var amount: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pls = UserDefaults.standard.integer(forKey: "waterConsumed")
        let pls2 = pls * 2
        let percent = Int((UserDefaults.standard.integer(forKey: "waterConsumed")) / 50 * 100)
        print(percent)
        
        amount.setText(String(UserDefaults.standard.integer(forKey: "waterConsumed")))
        waterRings.setBackgroundImageNamed("water-")
        waterRings.startAnimatingWithImages(in: NSMakeRange(0,(pls2)), duration: 2, repeatCount: 1)
        
    }
}
