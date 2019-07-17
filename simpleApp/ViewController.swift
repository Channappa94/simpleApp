//
//  ViewController.swift
//  simpleApp
//
//  Created by IMCS2 on 7/9/19.
//  Copyright © 2019 com.phani. All rights reserved.
//Checks if the number matches to some random number taken from the laptop

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        let number = Int.random(in: 0...10)
        let text: String = enterNumber.text!
        let numberFromString = Int(text)
        if numberFromString == number {
            myLabel.text = "number matches"
        }
        else{
            myLabel.text = "number does not match"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

