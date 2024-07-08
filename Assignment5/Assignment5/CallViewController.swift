//
//  CallViewController.swift
//  Assignment5
//
//  Created by Hein Thant on 9/7/2567 BE.
//

import UIKit

class CallViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel : UILabel!
    var phoneNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let phoneNumber = phoneNumber {
            phoneNumberLabel.text = phoneNumber
        }

    }
    
    @IBAction func endCall (_ sender: UIButton){
        sender.layer.cornerRadius = 40
        sender.clipsToBounds = true
        dismiss(animated: true, completion: nil)
    }
    


}
