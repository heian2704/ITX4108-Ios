//
//  SecondViewController.swift
//  Class6
//
//  Created by Hein Thant on 6/7/2567 BE.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak  var label : UILabel!
    
    var name : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "My name is \(name)"
        self.title = "\(name)" 
    }
    @IBAction func exit(_sender: UIButton){
        navigationController?.popViewController(animated: true) //saved already
//        dismiss(animated: true)
    }
    

}
