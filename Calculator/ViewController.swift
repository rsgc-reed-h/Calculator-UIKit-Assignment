//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlet to the display
    @IBOutlet weak var LabelDisplay: UILabel!
    
    
    //Create an instance of the calculator class
    
    var model = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //clear the contents from the label
        LabelDisplay.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //If pressed display "1"
    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "2"
    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "3"
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "4"
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "5"
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "6"
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "7"
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "8"
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "9"
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "10"
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "."
    @IBAction func decimalPoint(_ sender: Any) {
        model.addToNewValue(digit: ".")
        LabelDisplay.text = model.providedValue
    }
      //If pressed display "x" and activate function model
    @IBAction func multiply(_ sender: Any) {
        model.multiply()
        LabelDisplay.text = "x"
    }
    //display the computed value of values
    @IBAction func equals(_ sender: Any) {
        model.equals()
        if model.computedValue != nil {
            LabelDisplay.text = String(describing: model.computedValue!)
            LabelDisplay.text = String(format:"%g",model.computedValue!)
        }
    }
    //If pressed display "/" and activate function model
    @IBAction func divide(_ sender: Any) {
        model.divide()
        LabelDisplay.text = "/"
    }
    //clear provided values
    @IBAction func clear(_ sender: Any) {
        model.clear()
        LabelDisplay.text = model.providedValue
    }
    //If pressed display "-" and activate function model
    @IBAction func subtraction(_ sender: Any) {
        model.subtraction()
        LabelDisplay.text = "-"
    }
    //If pressed display "+" and activate function model
    @IBAction func addition(_ sender: Any) {
        model.addition()
        LabelDisplay.text = "+"
    }
    //If pressed display "%"
    @IBAction func percentage(_ sender: Any) {
        model.percentage()
        LabelDisplay.text = String(format: "%g", model.computedValue!)
        
    }
    //If pressed display "plusminus"
    @IBAction func plusminus(_ sender: Any) {
        model.plusminus()
        LabelDisplay.text = String(format: "%g", model.computedValue!)
        
    }
    
    
    
}

