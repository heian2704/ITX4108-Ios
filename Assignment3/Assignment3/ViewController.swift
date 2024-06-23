//
//  ViewController.swift
//  Assignment3
//
//  Created by Hein Thant on 23/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
   
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    let imageOptions = ["Clownfish", "Sea Turtles", "Seahorses", "dolphinss", "Great White Shark"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomize(_ sender: Any) {
        var randomImages = imageOptions.shuffled()
        let randomImageName1 = randomImages.removeFirst()
        let randomImageName2 = randomImages.removeFirst()

        label1.text = randomImageName1
        image1.image = UIImage(named: randomImageName1)

        label2.text = randomImageName2
        image2.image = UIImage(named: randomImageName2)
    }
    
}

