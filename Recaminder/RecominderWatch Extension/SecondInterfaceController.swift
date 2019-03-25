//
//  SecondInterfaceController.swift
//  RecominderWatch Extension
//
//  Created by ✨💖Erica Naglik💖✨ on 3/22/19.
//  Copyright © 2019 Timofey Makhlay. All rights reserved.
//

import WatchKit
import Foundation


class SecondInterfaceController: WKInterfaceController {

    @IBOutlet weak var minusButton: WKInterfaceButton!
    @IBOutlet weak var plusButton: WKInterfaceButton!
    @IBOutlet weak var ouncesLabel: WKInterfaceLabel!
    
    var ounceText: String?
    var ounceNum: Int = 0
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func minusAction() {
        ounceNum -= 1
        ounceText = "\(String(ounceNum))"
        ouncesLabel.setText(ounceText)
    }
    
    @IBAction func addAction() {
        ounceNum += 1
        ounceText = "\(String(ounceNum))"
        ouncesLabel.setText(ounceText)
    }
    
}
