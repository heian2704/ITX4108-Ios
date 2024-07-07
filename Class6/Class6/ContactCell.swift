//
//  ContactCell.swift
//  Class6
//
//  Created by Hein Thant on 6/7/2567 BE.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var positonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImage.contentMode = .scaleAspectFit
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = 12
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func set(contact: Contact) {
        nameLabel.text = contact.name
        positonLabel.text = contact.position
        profileImage.image = UIImage(named: contact.imageName)
    }

}
