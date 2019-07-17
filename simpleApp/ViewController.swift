//
//  ViewController.swift
//  simpleApp
//
//  Created by IMCS2 on 7/9/19.
//  Copyright © 2019 com.phani. All rights reserved.
//Checks if the number matches to some random number taken from the laptop

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        let number = Int.random(in: 0...10)//Getting a random number.
        let text: String = enterNumber.text!
        let numberFromString = Int(text)!
        if ((numberFromString > 10) || (numberFromString < 0)){//Checking if the number is greater than 10 and less that 0.
            myLabel.text = "Number is invalid"
        }else if numberFromString == number {//checking if the random number matches to the number from the string
            myLabel.text = "number matches"
        }
        else{//printing the number if the number does not match.
            myLabel.text = "number does not match"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterNumber.delegate = self//Add this part
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {//Function will help to toggle
        self.view.endEditing(true)
    }


}

