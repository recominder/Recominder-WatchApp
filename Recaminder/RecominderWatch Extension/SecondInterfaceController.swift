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
    @IBOutlet weak var addWater: WKInterfaceButton!
    
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
        if ounceNum > 0 {
            ounceNum -= 1
            ounceText = "\(String(ounceNum))"
            ouncesLabel.setText(ounceText)
        }
        else {
            
        }
    }
    
    @IBAction func addAction() {
        ounceNum += 1
        ounceText = "\(String(ounceNum))"
        ouncesLabel.setText(ounceText)
    }
    
    
    @IBAction func addWaterButtonPressed() {
        UserDefaults.standard.set(ounceNum, forKey: "waterConsumed")
        UserDefaults.standard.synchronize()
        print(UserDefaults.standard.integer(forKey: "waterConsumed"))
//        let vc = ThirdInterfaceController() //your view controller
//        self.present(vc, animated: true, completion: nil)
//        presentController(withName:context:)
//        pushController(withName:context:)
        presentController(withName: "fukit", context: nil)
        
    }
    
}
