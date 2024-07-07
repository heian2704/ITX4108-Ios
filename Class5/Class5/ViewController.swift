//
//  ViewController.swift
//  Class5
//
//  Created by Hein Thant on 6/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var scrollVIew : UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollVIew.delegate = self
    }


}

extension ViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }
}

