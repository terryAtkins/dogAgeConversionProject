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
        let converstionNumber = 7.0
        dogCalculatedYearsLabel.hidden = false
        let dogYearsInHumanYears = Double((dogYearsTextField.text as NSString).doubleValue)
        dogCalculatedYearsLabel.text = "Your dog's is \(dogYearsInHumanYears * converstionNumber) years old"
        dogYearsTextField.text = ""
        dogYearsTextField.resignFirstResponder()
        
    }


}

