//
//  ViewController.swift
//  TIp Calculator
//
//  Created by David on 1/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Total: UITextField!
    @IBOutlet weak var PercentageControl: UISegmentedControl!
    @IBOutlet weak var TipAmount: UITextField!
    @IBOutlet weak var TotalAfterTip: UITextField!
    @IBOutlet weak var SplitControl: UISegmentedControl!
    @IBOutlet weak var SplitTotal: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer (target: self, action:#selector(dismisskeyboard))
                self.view.addGestureRecognizer(tap)

                // Do any additional setup after loading the view.

            }
            //dismiss keyboard
            @objc func dismisskeyboard(){
                self.view.endEditing(true)
            }

    @IBAction func CalculateTip(_ sender: Any) {
        //get bill amount from text field input
        let bill = Double(Total.text!) ?? 0
        // get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.20, 0.25]
        let tip = bill * tipPercentages[PercentageControl.selectedSegmentIndex]
        let total = bill + tip
        
        let TotalPeople = [ 2.0 , 3.0 , 4.0 ]
                let SplitTotals = total / TotalPeople [SplitControl.selectedSegmentIndex]

        SplitTotal.text = String(format:"$%.2f", SplitTotals)
                //update split total label
     
        //update tip amount label
        TipAmount.text = String(format: "$%.2f", tip)
        //update total amount
        TotalAfterTip.text = String(format:"$%.2f", total)
        
        
    }
    }


