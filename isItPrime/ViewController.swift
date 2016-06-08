//
//  ViewController.swift
//  isItPrime
//
//  When a user enters a number, this app will tell the user if it is prime or not.
//  Prime numbers are those that are divisible by 1 and itself only. 
//  e.g. 2, 3, 5, 7... etc
//
//  Created by Sim Randhawa on 6/7/16.
//  Copyright © 2016 Sim Randhawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Inputs
    
    @IBOutlet var userInput: UITextField!
    
    // Outputs
    
    @IBOutlet var success: UILabel!
    
    // Check-if-prime function on button click
    
    @IBAction func checkIfPrime(sender: AnyObject) {
        
        // Establish check variable. Set to 0 for good measure.
        var chk = 0
        
        // Establish boolean variable that is set to TRUE.
        var primeChk = true
        
        // Start the counter variable at 2, because starting at 0 or 1 would cause issues when dividing by 0 or 1, as the counter increments.
        var i = 2
        
        // Convert the user's input to an integer and establish this value as a new integer value for prime check.
        let a:Int! = Int(userInput.text!)
        
        // As long as our counter is less than the user's input do this...
        
        while i < a {
            
            
            // Calculate the remainder value for user's input divided by counter varialbe. Insert this value into our chk variable.
            chk = a! % i
            
            
            
            
            // After calculation, see if the value of our chk variable is 0. If it is zero, this let's us know some number along the way to the user's input value was able to successfully divide and leave no remainder. 
            //
            // Therefore, change the primeChk boolean to false - this number cannot be prime.
            if chk == 0 {
                
                primeChk = false
                
            // break out of loop
                break
                
            } else {
            
            // If after calucation, we still have some remainder value, increment our counter and repeat the steps until i < a, the user's input.
            
                i += 1
                
            }
        // End While Loop
        }
        
        // Now that the while loop has ended, check what our primeChk boolean value is. If it is true, then the number is prime as each a % i calculation yileded some remainder value other than 0.
        
        if primeChk == true {
            
            success.text = "Yes, it is prime."
            
        } else {
            
            success.text = "No, not prime."
        }
        
        
        // This is just to offset the scenario under which no input in received from the user and 'Check Now' button is pressed.
        
        if userInput.text == "" {
  
            success.text = "Please insert a number"
            
        }
        
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // At launch, empty the output label to not display any information.
        success.text = ""

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

