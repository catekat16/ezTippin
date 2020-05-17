//
//  ViewController.swift
//  ezTippin
//
//  Created by Xiaoyan Yang on 5/7/20.
//  Copyright © 2020 codepath. All rights reserved.
//
import Foundation
import UIKit
import CurrencyTextField

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    
    @IBOutlet weak var billField: CurrencyTextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.

//        view.se/Users/xiaoyanyang/Desktop/Companies New/ezTippin/ezTippinUITests/ezTippinUITests.swifttGradientBackground(colorOne: Colors.veryDarkGrey, colorTwo: Colors.darkGrey)
        
        let sortedViews = splitControl.subviews.sorted( by: { $0.frame.origin.x < $1.frame.origin.x } )
        
        for (index, view) in sortedViews.enumerated() {
            if index == splitControl.selectedSegmentIndex {
                //view.backgroundColor = UIColor.blue
                let fraction = (Double((2*index)+1)/14.0)
                
                let b1 = Double(74 + fraction * (187-74))
                let b2 = Double(144 + fraction * (213-144))
                let b3 = Double(228 + fraction * (245-228))
                
                view.backgroundColor = UIColor(red: CGFloat(b1/255.0), green: CGFloat(b2/255.0), blue: CGFloat(b3/255.0), alpha: 1.0)
                
                splitControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
                
            } else {
                view.tintColor = UIColor.white
                view.backgroundColor = nil
            }
        }
        
        let sortedViews1 = tipControl.subviews.sorted( by: { $0.frame.origin.x < $1.frame.origin.x } )
        
        for (index, view) in sortedViews1.enumerated() {
            if index == tipControl.selectedSegmentIndex {
                //view.backgroundColor = UIColor.blue
                let fraction = (Double((2*index)+1)/10.0)
                
                let b1 = Double(142 + fraction * (255-142))
                let b2 = Double(186 + fraction * (255-186))
                let b3 = Double(238 + fraction * (255-238))
                
                view.backgroundColor = UIColor(red: CGFloat(b1/255.0), green: CGFloat(b2/255.0), blue: CGFloat(b3/255.0), alpha: 1.0)
                
                //tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
                tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: Colors.black], for: .selected)
                
            } else {
                view.tintColor = UIColor.white
                view.backgroundColor = nil
            }
        }
        
        tipControl.removeBorders()
        splitControl.removeBorders()
        
        myView.setGradientBackground(colorOne: Colors.white, colorTwo: Colors.blue)
        
        topView.setGradientBackground(colorOne: Colors.darkGrey, colorTwo: Colors.veryDarkGrey)
        
        bottomView.setGradientBackground(colorOne: Colors.darkGrey, colorTwo: Colors.veryDarkGrey)
//
//        myButton.setGradientBackground(colorOne: Colors.orange, colorTwo: Colors.brightOrange)
        
        view.setCrazyBackground(colorOne: Colors.white, colorTwo: Colors.green, colorThree: Colors.blue, colorFour: Colors.green)
        
        billField.becomeFirstResponder()
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
        

        
    
    @IBAction func changeColor(_ sender: Any) {
        //splitControl.tintColor = Colors.blue
        
        // blue = RGB(b1, b2, b3)
        // white = RGB(w1, w2, w3)
        // upper right corner = blue + w/(w+h) * (white - blue)
        // button 1 = blue + 1/14 * (upper right corner - blue)
        // and so on
        
        // blue = UIColor(red: 74.0/255.0, green: 144.0/255.0, blue: 228.0/255.0, alpha: 1.0)
        // white = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        
        //print(splitControl.selectedSegmentIndex)
        //(splitControl.subviews[splitControl.selectedSegmentIndex-3] as UIView).backgroundColor = UIColor.blue
        let sortedViews = splitControl.subviews.sorted( by: { $0.frame.origin.x < $1.frame.origin.x } )
        
        for (index, view) in sortedViews.enumerated() {
            if index == splitControl.selectedSegmentIndex {
                //view.backgroundColor = UIColor.blue
                //print(index0)
                
                let fraction = (Double((2*index)+1)/14.0)
                
                let b1 = Double(74 + fraction * (187-74))
                let b2 = Double(144 + fraction * (213-144))
                let b3 = Double(228 + fraction * (245-228))
                
                view.backgroundColor = UIColor(red: CGFloat(b1/255.0), green: CGFloat(b2/255.0), blue: CGFloat(b3/255.0), alpha: 1.0)

                print(b1)
                splitControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
            } else {
                view.tintColor = UIColor.white
                view.backgroundColor = nil
            }
        }
    
    }
    
    
    @IBAction func changeColor2(_ sender: Any) {
        let sortedViews1 = tipControl.subviews.sorted( by: { $0.frame.origin.x < $1.frame.origin.x } )
        
        for (index, view) in sortedViews1.enumerated() {
            if index == tipControl.selectedSegmentIndex {
                //view.backgroundColor = UIColor.blue
                let fraction = (Double((2*index)+1)/10.0)
                
                let b1 = Double(142 + fraction * (255-142))
                let b2 = Double(186 + fraction * (255-186))
                let b3 = Double(238 + fraction * (255-238))
                
                view.backgroundColor = UIColor(red: CGFloat(b1/255.0), green: CGFloat(b2/255.0), blue: CGFloat(b3/255.0), alpha: 1.0)
                
                //tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
                tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: Colors.black], for: .selected)
            } else {
                view.tintColor = UIColor.white
                view.backgroundColor = nil
            }
        }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount

        let data0 = String(billField.text!)
        // Create a character set of delimiters
        let separators = CharacterSet(charactersIn: "$.,")
        // Split based on characters
        let data1 = data0.components(separatedBy: separators)
        // output should be ["xx","xxx",..] here
        //print(data1)
            // gives empty space, need to remove
            // we have ["", "991", "020"]
        let nonempty = data1.filter { (x) -> Bool in !x.isEmpty }
        //print(nonempty)
            // we have ["991", "020"]
        // join together with an empty delimiter:
        let result = nonempty.joined()
            // now we have "991020"
        // don't need to index and insert ., just convert to double and divide by 100
        
        let value = Double(result) ?? 0
        //let bill = Double(billField.text!) ?? 0
        let bill = value/100
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.20, 0.25, 0.30] //TODO: implement the x%
        let waystosplit = [1, 2, 3, 4, 5, 6, 7] //TODO: implement the X
        
        let percenttip = tipPercentages[tipControl.selectedSegmentIndex]
        let tip = bill * percenttip
        let total = (bill + tip) / Double(waystosplit[splitControl.selectedSegmentIndex])
        
        // Update the tip and total labels
        tipLabel.text = String(format: "+ $%.2f (%.1f%% Tips)", tip, Double(100*percenttip))
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        //tipControl.selectedSegmentIndex =
        // retrieve the default tip percentage from UserDefaults and use it to update the tip amount here
        let defaults = UserDefaults.standard
        let percenttip = defaults.double(forKey: "defaultTip")
        
        if percenttip == 0.15 {
            tipControl.selectedSegmentIndex = 0
        } else if percenttip == 0.18 {
            tipControl.selectedSegmentIndex = 1
        } else if percenttip == 0.20 {
            tipControl.selectedSegmentIndex = 2
        } else if percenttip == 0.25 {
            tipControl.selectedSegmentIndex = 3
        } else if percenttip == 0.30 {
            tipControl.selectedSegmentIndex = 4
        }
        
        let sortedViews1 = tipControl.subviews.sorted( by: { $0.frame.origin.x < $1.frame.origin.x } )
        
        for (index, view) in sortedViews1.enumerated() {
            if index == tipControl.selectedSegmentIndex {
                //view.backgroundColor = UIColor.blue
                let fraction = (Double((2*index)+1)/10.0)
                
                let b1 = Double(142 + fraction * (255-142))
                let b2 = Double(186 + fraction * (255-186))
                let b3 = Double(238 + fraction * (255-238))
                
                view.backgroundColor = UIColor(red: CGFloat(b1/255.0), green: CGFloat(b2/255.0), blue: CGFloat(b3/255.0), alpha: 1.0)
                
                //tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
                tipControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: Colors.black], for: .selected)
                
            } else {
                view.tintColor = UIColor.white
                view.backgroundColor = nil
            }
        }
        
        //print(percenttip)
        
        let data0 = String(billField.text!)
        let separators = CharacterSet(charactersIn: "$.,")
        let data1 = data0.components(separatedBy: separators)
        let nonempty = data1.filter { (x) -> Bool in !x.isEmpty }
        let result = nonempty.joined()
        
        let value = Double(result) ?? 0
        //let bill = Double(billField.text!) ?? 0
        let bill = value/100
        let tip = bill * percenttip
        tipLabel.text = String(format: "+ $%.2f (%.1f%% Tips)", tip, Double(100*percenttip))
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
    
}

