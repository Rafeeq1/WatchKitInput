//
//  InterfaceController.swift
//  UserInputDemo WatchKit Extension
//
//  Created by Rafeeq on 09/12/15.
//  Copyright © 2015 Eeshana. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet var userInputLabel: WKInterfaceLabel!
   
    @IBAction func userInput() {
        
        let phrases=["Busy","At work"," At the movies","In meeting"]
        
        presentTextInputControllerWithSuggestions(phrases, allowedInputMode:.AllowEmoji) { (result) -> Void in
            
            if let choice = result {
                
                if choice[0] is String{
                    self.userInputLabel.setText(choice[0] as? String)
                }
                
            }
        }
        
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

}
