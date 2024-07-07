//
//  ViewController.swift
//  Class6
//
//  Created by Hein Thant on 6/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickme(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC")  as? SecondViewController{
            vc.name = textFeild.text ?? "" //pass the data
            
            navigationController?.pushViewController(vc, animated: true) // navigation push
//            vc.modalPresentationStyle = .fullScreen
//            present(vc, animated: true)
        }
       
    }
    
}

