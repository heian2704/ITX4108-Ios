//
//  ContactDetailViewController.swift
//  Class6
//
//  Created by Hein Thant on 6/7/2567 BE.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    var contact: Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageView.contentMode = .scaleAspectFill
        ImageView.clipsToBounds = true
        ImageView.layer.cornerRadius = 100
        
        if let contact{
            nameLabel.text = contact.name
            positionLabel.text = contact.position
            ImageView.image = UIImage (named: contact.imageName)
        }
    }
    
    


}
