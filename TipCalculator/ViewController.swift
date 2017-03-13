//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nayan Konaje on 3/6/17.
//  Copyright © 2017 Nayan Konaje. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var bill: UITextField!
    
    @IBOutlet weak var control: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let userDefaults = UserDefaults.standard
        control.selectedSegmentIndex = userDefaults.integer(
            forKey: "defaultPct")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
   
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        let billAmount = Double(bill.text!) ?? 0
        let tipAmount = billAmount * tipPercentages[control.selectedSegmentIndex]
        let totalAmount = billAmount + tipAmount
        
        tip.text = String(format: "$%.2f", tipAmount)
        total.text = String(format: "$%.2f", totalAmount)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("view will appear")
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
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
}

