//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Pavel Naumov on 18.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let contactList = Person.getContactList()
        let contactListVC = viewControllers?.first as! ContactListViewController
        let detailedListVC = viewControllers?.last as! DetailedListViewController
        
        contactListVC.contactList = contactList
        detailedListVC.contacts = contactList
    }
}
