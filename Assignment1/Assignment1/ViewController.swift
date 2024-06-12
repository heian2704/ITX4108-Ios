//
//  ViewController.swift
//  Assignment1
//
//  Created by Hein Thant on 12/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameLB: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ClownFish(_ sender: Any) {
        nameLB.text = "ClownFish"
    }
    
    @IBAction func Shark(_ sender: Any) {
        nameLB.text = "Shark"
    }
    
    @IBAction func SeaTurtles(_ sender: Any) {
        nameLB.text = "SeaTurtles"
    }
    
    @IBAction func Seahourse(_ sender: Any) {
        nameLB.text = "Seahorses"
    }
    
    @IBAction func Octopus(_ sender: Any) {
        nameLB.text = "Octopus"
    }
    
    @IBAction func Dolphins(_ sender: Any) {
        nameLB.text = "Dolphin"
    }
}

