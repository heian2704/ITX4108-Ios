//
//  TableViewController.swift
//  Class6
//
//  Created by Hein Thant on 6/7/2567 BE.
//

import UIKit

class TableViewController: UIViewController {
    
    let colors = ["Red", "Green", "Blue", "Teal"]
    let contacts = [
        Contact(imageName: "c1", name: "heian", position: "Student"),
        Contact(imageName: "c2", name: "James", position: "Student")
    ]
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.dataSource = self
        tableView.delegate  = self
    }
    
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as? ContactCell {
              // Ensure indexPath.row is within the bounds of the contacts array
              if indexPath.row < contacts.count {
                  let contact = contacts[indexPath.row]
                  cell.nameLabel.text = contact.name
                  cell.positonLabel.text = contact.position
                  cell.profileImage.image = UIImage(named: contact.imageName)
                  return cell
              }

          }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //remove grey deselect
        if let vc = storyboard?.instantiateViewController(withIdentifier: "contactDetail") as? ContactDetailViewController{
            vc.contact = contacts [indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
