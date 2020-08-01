//
//  ViewController.swift
//  tip
//
//  Created by Julio Leonardo Aguilar Colon on 8/1/20.
//  Copyright © 2020 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
//        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate the tip and total
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update the tip and total labels
        tipLabel.text = String(format: "S%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}

