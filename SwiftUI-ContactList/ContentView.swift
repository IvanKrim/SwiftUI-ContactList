//
//  ContentView.swift
//  SwiftUI-ContactList
//
//  Created by Kalabishka Ivan on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactList()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Contacts")
                }
            NumbersScreen()
                .tabItem {
                    Image(systemName: "phone.circle")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
