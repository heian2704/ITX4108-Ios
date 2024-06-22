//
//  ViewController.swift
//  Quiz1
//
//  Created by Hein Thant on 22/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    let imageOptions = ["Clownfish", "Sea Turtles", "Seahorses", "dolphinss", "Great White Shark"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = "Seahorses"
        myImageView.image = UIImage(named: "Seahorses")
    }

    @IBAction func random(_ sender: Any) {
        let randomImageName = imageOptions.randomElement()!
        myLabel.text = randomImageName
        myImageView.image = UIImage(named: randomImageName)
    }
    
}

