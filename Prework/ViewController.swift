//
//  ViewController.swift
//  Prework
//
//  Created by Jiyoung yoon on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var personControl: UIStepper!
    @IBOutlet weak var personPrice: UILabel!
    
    @IBOutlet weak var darkSwitch: UISwitch!
    var tipCalc = TipCalc(amountBeforeTax: 0, tipPercentage: 0)
    
    func calculateTip() {
        
    }
    
    func updateUI() {
        
    }
    
    func tipControls() {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.becomeFirstResponder()
        
        billAmountTextField.text = "$0.00"
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        personLabel.text = "1"
        personPrice.text = "$0.00"
        
        personControl.wraps = true
        personControl.autorepeat = true
        personControl.maximumValue = 10
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        tipControl.selectedSegmentIndex = 1
        
        if billAmountTextField.text?.count == 0 {
            billAmountTextField.becomeFirstResponder()
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    
    @IBAction func splitPrice(_ sender: UIStepper) {
        personLabel.text = Int(sender.value).description
    }
    
    @IBAction func darkModeControl(_ sender: Any) {
        if darkSwitch.isOn == true {
            
            view.overrideUserInterfaceStyle = .dark
//            view.backgroundColor = UIColor.darkGray
            
        } else {
//            view.backgroundColor = UIColor.white
            view.overrideUserInterfaceStyle = .light
    }
    }
        
    @IBAction func cacluateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let perPerson = total / personControl.value
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        personPrice.text = String(format: "$%.2f", perPerson)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

