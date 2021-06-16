//
//  NumbersScreen.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI

struct NumbersScreen: View {
    let contactList = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(contactList) { person in
                    Section(
                        header: Text("\(person.fullName)")
                            .textCase(nil)
                    ) {
                        
                        RowConfiguration(
                            content: person.phoneNumber,
                            imageSystemName: "phone"
                        )
                        RowConfiguration(
                            content: person.email,
                            imageSystemName: "envelope"
                        )
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct NumbersScreen_Previews: PreviewProvider {
    static var previews: some View {
        NumbersScreen()
    }
}
