//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Pavel Naumov on 18.05.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var contactList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let contactDataVC = segue.destination as! ContactDataViewController
            contactDataVC.contact = contactList[indexPath.row]
        }
    }
}
