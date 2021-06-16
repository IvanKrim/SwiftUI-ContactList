//
//  RowConfiguration.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 16.06.2021.
//

import SwiftUI

struct RowConfiguration: View {
    let content: String
    let imageSystemName: String
    
    var body: some View {
        HStack{
            Image(systemName: imageSystemName)
                .foregroundColor(.blue)
            
            Text("\(content)")
        }
    }
}

struct RowConfiguration_Previews: PreviewProvider {
    static var previews: some View {
        RowConfiguration(content: "Phone", imageSystemName: "phone")
    }
}
