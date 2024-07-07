//
//  SecondViewController.swift
//  Class-4
//
//  Created by Hein Thant on 29/6/2567 BE.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var number2: UITextField!
    @IBOutlet var number1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number1.keyboardType = .numberPad
        number1.keyboardType = .numberPad
    }
    
    @IBAction func button(_ sender: Any) {
        let firstNumber = Int( number1.text!)
        let secondNumber = Int( number2.text!)
        let sum = firstNumber! + secondNumber!
        label.text = "The sum is \(sum)"
        
    
    }
    
}
