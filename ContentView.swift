//
//  ContentView.swift
//  Lists
//
//  Created by Mushik, Victoria on 3/15/24.
//

import SwiftUI

struct ContentView: View {
    let friends = ["Anna", "Alice", "Carrie", "David", "Harris", "Michal", "Ori", "Sammy"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(friends, id: \.self) { friend in
                    NavigationLink(destination: Text(friend)) {
                        Image(systemName: "person.crop.circle")
                        Text(friend)
                    }.padding()
                }
                .navigationTitle("Friends")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
