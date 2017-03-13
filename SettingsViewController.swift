//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Nayan Konaje on 3/6/17.
//  Copyright © 2017 Nayan Konaje. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultPct: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func storeDefaultPct(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(defaultPct.selectedSegmentIndex, forKey:"defaultPct")
        userDefaults.synchronize();
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let userDefaults = UserDefaults.standard
        defaultPct.selectedSegmentIndex = userDefaults.integer(
            forKey: "defaultPct")
        print("view will appear")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
