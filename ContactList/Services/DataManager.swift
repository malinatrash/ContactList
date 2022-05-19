//
//  DataManager.swift
//  ContactList
//
//  Created by Pavel Naumov on 18.05.2022.
//

class DataManager {
    static let shared = DataManager()
    
    let firstNames = ["Oliver", "Jack", "Harry", "Jacob", "Charley",
                      "Thomas", "George", "Oscar", "Arnold", "Bernard"]
    let lastNames = ["Evans", "Stone", "Mills", "Grant", "Barlow",
                     "Collins", "Gibson", "Williams", "Bradley", "Adams"]
    let phones = ["950259", "592052", "160252", "719511", "659295",
                  "399195", "295018", "985725", "666252", "923525"]
    let emails = ["roddy@bk.net", "gagg@gg.da", "yehh@wb.of",
                  "treab@ref.org", "qyue@qite.com", "view@arl.net",
                  "creamy@wiki.mou", "refff@pack.ru", "killer2007@vk.twr", "bassist@inst.data"]
    
    private init() {}
}
