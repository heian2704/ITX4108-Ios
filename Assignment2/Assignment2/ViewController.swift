//
//  ViewController.swift
//  Assignment2
//
//  Created by Hein Thant on 12/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameLB: UILabel!
    @IBOutlet var ageLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var secondNameTF: UITextField!
    @IBOutlet var ageTF: UITextField!
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        nameLB.text  = "Your name is \(firstNameTF.text!) \(secondNameTF.text!)"
        
        ageLB.text = "You are \(ageTF.text!) years old"
    }
    
}

