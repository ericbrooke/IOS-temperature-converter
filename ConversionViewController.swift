//
//  ConversionViewController.swift
//  temperature converter
//
//  Created by Eric Brooke on 7/25/16.
//  Copyright © 2016 Eric Brooke. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField) {
        if let text = textField.text where !text.isEmpty {
            celsiusLabel.text = text
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
}
