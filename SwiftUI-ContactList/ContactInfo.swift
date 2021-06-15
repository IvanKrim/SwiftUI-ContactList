//
//  Contact.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI
// Детальная информация о пользователе 
struct ContactInfo: View {
    let persons: [Person]
    
    var body: some View {
        Text("HI")
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(persons: Person.getContactList())
    }
}
