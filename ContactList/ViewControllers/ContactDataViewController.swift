//
//  ContactDataViewController.swift
//  ContactList
//
//  Created by Pavel Naumov on 18.05.2022.
//

import UIKit

class ContactDataViewController: UIViewController {
    
    @IBOutlet weak var contactPhone: UILabel!
    @IBOutlet weak var contactEmail: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        contactPhone.text = "Phone: \(contact.phone)"
        contactEmail.text = "Email: \(contact.email)"
    }
}
