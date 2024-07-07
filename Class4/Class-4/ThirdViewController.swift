//
//  ThirdViewController.swift
//  Class-4
//
//  Created by Hein Thant on 29/6/2567 BE.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        print ("Second View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print ("Second View Will Appear ")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print ("Second View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print ("Second View Will Disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
            print ("Second View Did Disapper")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
