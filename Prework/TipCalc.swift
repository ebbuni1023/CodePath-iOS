//
//  TipCalc.swift
//  Prework
//
//  Created by Jiyoung yoon on 1/25/22.
//

import Foundation

class TipCalc
{
    var tipAmount: Double = 0
    var amountBeforeTax: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    
    init (amountBeforeTax: Double, tipPercentage: Double)
    {
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip()
    {
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
    }
}
