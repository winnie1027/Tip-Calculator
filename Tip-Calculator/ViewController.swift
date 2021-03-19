//
//  ViewController.swift
//  Tip-Calculator
//
//  Created by Winnie Yang on 3/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        let tipIndex = defaults.integer(forKey: "defaultTip")
        tipControl.selectedSegmentIndex = tipIndex
        
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0   // if bill is nothing, set it to 0
        
        // Get tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

