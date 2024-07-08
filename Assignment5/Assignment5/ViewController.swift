//
//  ViewController.swift
//  Assignment5
//
//  Created by Hein Thant on 9/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    var enteredNumber: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for tag in 0...13 {
            if let button = view.viewWithTag(tag) as? UIButton {
                button.layer.cornerRadius = 40
                button.clipsToBounds = true
            }
        }
        
    }
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        switch sender.tag{
        case 10: enteredNumber += "*"
        case 11: enteredNumber += "#"
        case 12: enteredNumber += "0"
        default:
            let number = sender.tag
            enteredNumber += "\(number)"
        }
        numberLabel.text = enteredNumber
        
    }
    @IBAction func deleteButtonTapped (_ sender: UIButton){
        if !enteredNumber.isEmpty {
            enteredNumber.removeLast()
            numberLabel.text = enteredNumber
        }
    }
    
    @IBAction func call(_ sender: UIButton){
        sender.layer.cornerRadius = 40
        sender.clipsToBounds = true
        if let callViewController = storyboard?.instantiateViewController(withIdentifier: "callVC")  as? CallViewController{
            callViewController.phoneNumber = enteredNumber
            callViewController.modalPresentationStyle = .fullScreen
            present(callViewController, animated: true, completion: nil)
        }
    }
}
