//
//  Calculator.swift
//  CalculatorTestRun
//
//  Created by Russell Gordon on 4/27/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation

class Calculator {
    
    // MARK: Properties
    var providedValue : String = ""
    var computedValue : Double? = nil
    var operation : Operation? = nil
//    var cv : Double?
    
    // MARK: Initializer(s)
    
    // MARK: Method(s) a.k.a. Function(s)
    func addToNewValue(digit : String) {
        providedValue = providedValue + digit
    }
    
    /**
     Sets calculator operation to multiplication, and computes a new value, if needed.
     */
    func multiply() {
        
        // Set the operation
        operation = Operation.multiplication
        
        updateState()
        
        
    }
    
    /**
     Sets calculator operation to division, and computes a new value, if needed.
     */
    func divide() {
        
        // Set the operation
        operation = Operation.division
        
        updateState()
        
        
    }
    
    /**
     Updates calculator state.
     
     This means: what the current computed value is, what the new value provided by the user is, and whether to perform an operation on the computed value and provided value.
     */
    func updateState() {
        
        if computedValue == nil {
            
            // 1. When in this branch, there is no current computed value, just a new provided value.
            
            // Now then, the only thing to do is make the provided value become the computed value.
            makeProvidedValueComputedValue()
            
        } else {
            
            // 1. When in this branch, there is a current computed value.
            
            if providedValue == "" {
                
                // 2. When in this branch, there no provided value yet (an empty string: "")
                //    Only an operation has been logged (multiply, divide, et cetera).
                
                // So, do nothing.
                
            } else {
                
                // 2. When in this branch, a new provided value has been given.
                
                // So, perform the operation!
                equals()
            }
            
        }
        
    }
    
    /**
     Determine a new computed value.
     
     The current operation is performed on the computed value and the provided value.
     */
    func equals() {
//         Check operation type
        if operation == Operation.multiplication {
            
            computedValue = computedValue! * Double(providedValue)!
            
        } else if
            
            operation == Operation.division {
            
            computedValue = computedValue! / Double(providedValue)!
            
        } else if
            
            operation == Operation.subtraction {
            
            computedValue = computedValue! - Double(providedValue)!
            
        } else if
            
            operation == Operation.addition {
            
            computedValue = computedValue! + Double(providedValue)!
            
        } else if
            
            operation == Operation.percentage {
            // if the computed value is = to nil the program will crash if we attempt to unwrap. So this if statement checks if the input is = or != to nil and runs the code dependant on that
          if computedValue != nil {
            
            computedValue = computedValue! * (0.01)
            
        }else{
            
            computedValue = 0
            
            }
        }
        providedValue = ""
        operation = nil
       }
        /**
         Makes the computed value become whatever value the user has typed into the calculator.
         */
        func makeProvidedValueComputedValue() {
            
            computedValue = Double(providedValue)
            providedValue = ""
        }
        
        /**
         Resets the operation, provided value, and computed value.
         */
        func clear() {
            
            // Reset everthing
            operation = nil
            providedValue = ""
            computedValue = nil
        }
        
        // simple subtraction function
        func subtraction() {
            
            operation = Operation.subtraction
            
            updateState()
            
            
        }
        
        // addition function
        func addition() {
            
            operation = Operation.addition
    
            updateState()
        }
        
        //plusminus function
        func plusminus() {
            if providedValue == "" {
                //store computedvalue
            if var cv = computedValue {
                //times value by -1
            cv = cv * -1
            providedValue = String(format: "%g", cv)
                }
            }
            else {
                //let cv = provided value
            if var cv = Double(providedValue){
                //times value by -1
            cv = cv * -1
            providedValue = String(format: "%g", cv)
                }
            }
        }
    
        //percentage function
        func percentage() {
            operation = Operation.percentage
            
            updateState()
            
            equals()
        }

}
