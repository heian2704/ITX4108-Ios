    //
    //  ViewController.swift
    //  Assignment4
    //
    //  Created by Hein Thant on 30/6/2567 BE.
    //

    import UIKit

    class ViewController: UIViewController , UITextFieldDelegate{
        
        @IBOutlet var inputTextField: UITextField!
        @IBOutlet var countAlabel: UILabel!
        @IBOutlet var countElabel: UILabel!
        @IBOutlet var countIlabel: UILabel!
        @IBOutlet var countOlabel: UILabel!
        @IBOutlet var countUlabel: UILabel!
        
        @IBOutlet var Aview: UIView!
        @IBOutlet var Eview: UIView!
        @IBOutlet var Iview: UIView!
        @IBOutlet var OView: UIView!
        @IBOutlet var UView: UIView!
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            inputTextField.layer.borderColor = UIColor.blue.cgColor
            Aview.backgroundColor = .white
            Eview.backgroundColor = .white
            Iview.backgroundColor = .white
            OView.backgroundColor = .white
            UView.backgroundColor = .white
            
            inputTextField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
            inputTextField.delegate = self
            
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
            view.addGestureRecognizer(tapGestureRecognizer)
        }
        
        func textFieldDidBeginEditing(_ textField: UITextField) {
            if !inputTextField.isFirstResponder {
                inputTextField.becomeFirstResponder()
            }
        }

        @objc func handleTap(sender: UITapGestureRecognizer) {
            view.endEditing(true) // Hide keyboard when tapping outside of UITextField
        }
        
        @objc func textFieldEditingChanged (_ textField: UITextField){
            let text = textField.text?.lowercased() ?? ""
            
            var countA = 0
            var countE = 0
            var countI = 0
            var countO = 0
            var countU = 0
            
            for char in text {
                switch char {
                case "a":
                    countA += 1
                case "e":
                    countE += 1
                case "i":
                    countI += 1
                case "o":
                    countO += 1
                case "u":
                    countU += 1
                default:
                    break
                }
            }
            
            countAlabel.text = "\(countA)"
            countElabel.text = "\(countE)"
            countIlabel.text = "\(countI)"
            countOlabel.text = "\(countO)"
            countUlabel.text = "\(countU)"
            
            Aview.backgroundColor = countA == 0 ? .white : UIColor(red: 0.5, green: 0.8, blue: 1, alpha: 1.0)
            Eview.backgroundColor = countE == 0 ? .white : UIColor(red: 0.5, green: 0.8, blue: 1.0, alpha: 1.0)
            Iview.backgroundColor = countI == 0 ? .white : UIColor(red: 0.5, green: 0.8, blue: 1.0, alpha: 1.0)
            OView.backgroundColor = countO == 0 ? .white : UIColor(red: 0.5, green: 0.8, blue: 1.0, alpha: 1.0)
            UView.backgroundColor = countU == 0 ? .white : UIColor(red: 0.5, green: 0.8, blue: 1.0, alpha: 1.0)
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            inputTextField.becomeFirstResponder()
        }
    }

