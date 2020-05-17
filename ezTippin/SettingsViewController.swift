//
//  SettingsViewController.swift
//  ezTippin
//
//  Created by Xiaoyan Yang on 5/9/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    @IBAction func getpercentagetip(_ sender: Any) {
        let tipPercentages = [0.15, 0.18, 0.20, 0.25, 0.30]
        let percenttip = tipPercentages[defaultTip.selectedSegmentIndex]
        print(percenttip)
        let defaults = UserDefaults.standard
        defaults.set(percenttip, forKey: "defaultTip")
        
        let getpercenttip = defaults.double(forKey: "defaultTip")
        //print(getpercenttip)
        defaults.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.setCrazyBackground(colorOne: Colors.pink, colorTwo: Colors.blue, colorThree: Colors.white, colorFour: Colors.white)
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
