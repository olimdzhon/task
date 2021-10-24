//
//  ContentView.swift
//  task
//
//  Created by Олимджон Садыков on 23.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Tab1().tabItem {
                Image(systemName: "house.circle.fill")
                Text("Home")
            }
            Tab2().tabItem {
                Image(systemName: "creditcard.circle.fill")
                Text("Payments")
            }
            Tab3().tabItem {
                Image(systemName: "bag.circle.fill")
                Text("Services")
            }
        }.accentColor(.primaryPurple)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Wallet())
    }
}
