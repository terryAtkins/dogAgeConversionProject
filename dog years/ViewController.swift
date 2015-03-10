//
//  ViewController.swift
//  dog years
//
//  Created by terry atkins on 10/03/2015.
//  Copyright (c) 2015 terry atkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsTextField: UITextField!
    @IBOutlet weak var dogCalculatedYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dogCalculateButtonPressed(sender: UIButton) {
        var converstionNumber = 0.0
        var twoYearsPassed = 0.0
        dogCalculatedYearsLabel.hidden = false
        var dogYearsInHumanYears = Double((dogYearsTextField.text as NSString).doubleValue)
        
        if dogYearsInHumanYears <= 2 {
            converstionNumber = 10.5
//            twoYearsPassed = 0.0
            
        } else if dogYearsInHumanYears > 2 {
            converstionNumber = 4
            dogYearsInHumanYears -= 2.0
            twoYearsPassed = 21.0
        }
        
        
        dogCalculatedYearsLabel.text = "Your dog's is \((dogYearsInHumanYears * converstionNumber) + twoYearsPassed) years old"
        dogYearsTextField.text = ""
        dogYearsTextField.resignFirstResponder()
        
    }
    

}

