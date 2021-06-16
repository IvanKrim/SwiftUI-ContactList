//
//  Contact.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI
// Детальная информация о пользователе 
struct ContactInfo: View {
    let email: String
    let phone: String
    let fullName: String
    
    var body: some View {
        List{
            Image(systemName:"person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            
            HStack{ // сделать отдельным представлением
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                
                Text("\(phone)")
            }
            
            HStack{
                Image(systemName: "envelope")
                    .foregroundColor(.blue)
                
                Text("\(email)")
            }
        }
        .navigationTitle("\(fullName)")
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfo(email: "Email", phone: "Phone", fullName: "FullName")
    }
}
