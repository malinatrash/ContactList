//
//  Person.swift
//  ContactList
//
//  Created by Pavel Naumov on 18.05.2022.
//

struct Person {
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getContactList() -> [Person] {
        
        var contact: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterations = min(firstNames.count, lastNames.count, phones.count, emails.count)
        
        for index in 0...iterations - 1 {
            contact.append(
                Person(
                    firstName: firstNames[index],
                    lastName: lastNames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        return contact
    }
}


