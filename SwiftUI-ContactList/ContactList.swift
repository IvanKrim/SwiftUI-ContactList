//
//  ContactsScreen.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI

struct ContactList: View {
    let contactList = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List(contactList) { person in
                NavigationLink(
                    destination: ContactInfo(
                        email: person.email,
                        phone: person.phoneNumber,
                        fullName: person.fullName
                    )) {
                    Text("\(person.fullName)")
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
