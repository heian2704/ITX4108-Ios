//
//  ViewController.swift
//  view and frame
//
//  Created by Hein Thant on 22/6/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let blueView = UIView(frame: CGRect(x: 100, y: 200, width: 50, height: 50))
        blueView.backgroundColor =  .blue
        view.addSubview(blueView)
        
        let greenView = UIView(frame: CGRect(x: 10, y: 10, width: 25, height: 25))
        greenView.backgroundColor = .green
        //view.addSubview(greenView)
        blueView.addSubview(greenView) // green view is the child view of blue view
    }


}

