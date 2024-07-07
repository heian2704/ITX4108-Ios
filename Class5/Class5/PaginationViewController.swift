//
//  PaginationViewController.swift
//  Class5
//
//  Created by Hein Thant on 6/7/2567 BE.
//

import UIKit

class PaginationViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.numberOfPages = 3
        scrollView.delegate = self
    }
    

}

extension PaginationViewController : UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let width = view.bounds.width
        let currentOffset = scrollView.contentOffset.x
        let currentPage = round(currentOffset/width) // width = 393 offset = 0 393/393 =1 786/393
        
        pageControl.currentPage = Int(currentPage)
        print(scrollView.contentOffset.x)
    }
}
