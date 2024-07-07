//
//  ViewController.swift
//  Class-4
//
//  Created by Hein Thant on 29/6/2567 BE.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.keyboardType = .namePhonePad
        nameTF.addTarget(self, action: #selector(nameValueChanged), for: .editingChanged)
       nameTF.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
        print ("View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print ("View Will Appear ")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print ("View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print ("View Will Disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
            print ("View Did Disapper")
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func button(_ sender: Any) {
        print (nameTF.text!)
    }
    
    @objc func nameValueChanged(_ textField: UITextField) {
        if let count = textField.text?.count {
            print("Name count: \(count)")
        }
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Begin Editing")
        }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("End Editing")
        }
}

