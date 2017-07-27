//
//  ViewController.swift
//  Prime
//
//  Created by Com 05 on 7/27/2560 BE.
//  Copyright © 2560 Com 05. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Implicit
    let strAlertHaveSpace = "กรุณากรอกจำนวนเฉพาะ"
    
    let strAlertNumberFalse = "กรุณากรอกเฉพาะตัวเลข"
    
    
    
    @IBOutlet weak var NumberTextField: UITextField!
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    @IBAction func CheckButton(_ sender: Any) {
        
        let strNumberFromTextField = NumberTextField.text!
        print("Number ==> \(strNumberFromTextField)")
        
        // Check Space
        
        if strNumberFromTextField != "" {
            print("No Space")
            
            // Check Number or Arrtical
            
            if let intNumberFromTextField = Int(strNumberFromTextField) {
                print("This is Number")
            } else {
                print("This is Arrtical")
                ResultLabel.text = strAlertNumberFalse
            }
            
        } else {
            print("Have Space")
            
            ResultLabel.text = strAlertHaveSpace
            
        }// If 1
        
        
    }// Check Button
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

