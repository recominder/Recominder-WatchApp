//
//  InterfaceController.swift
//  RecominderWatch Extension
//
//  Created by ✨💖Erica Naglik💖✨ on 3/20/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var runningLabel: WKInterfaceLabel!
    
    @IBOutlet weak var addWaterButton: WKInterfaceButton!
    @IBOutlet weak var heartRatePanel: WKInterfaceImage!
    @IBOutlet weak var caloresPanel: WKInterfaceImage!
    @IBOutlet weak var waterPanel: WKInterfaceImage!
    @IBOutlet weak var consumptionLabel: WKInterfaceImage!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        runningLabel.setText("Running")
        
//        func scroll(to: WKInterfaceImage, at scrollPosition: WKInterfaceScrollPosition, animated: Bool) {
//
//        }
//        scroll(to: heartRatePanel, at: WKInterfaceScrollPosition.centeredVertically, animated: true)
//        scroll(to: caloresPanel, at: WKInterfaceScrollPosition.centeredVertically, animated: true)
//        scroll(to: waterPanel, at: WKInterfaceScrollPosition.centeredVertically, animated: true)
//        scroll(to: consumptionLabel, at: WKInterfaceScrollPosition.centeredVertically, animated: true)
//        heartRateLabel.setTextColor(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
    }
    
    
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
