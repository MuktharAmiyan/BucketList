//
//  ContentView.swift
//  BucketList
//
//  Created by Mukthar Amiyan on 06/01/24.
//


import SwiftUI


struct User: Comparable, Identifiable {
    
    let id = UUID()
    var firstName : String
    var lastName  : String
    
    static func < (lhs : User,rhs : User)  -> Bool {
        lhs.firstName < rhs.firstName
    }
}
 
struct ContentView: View {
    let users = [
    User(firstName: "Mukthar", lastName: "Amiyan"),
    User(firstName: "Mohammed", lastName: "Danish"),
    User(firstName: "Mohammed", lastName: "Shibili"),
    User(firstName: "Mohammed", lastName: "Jasin"),
    User(firstName: "Dilshad", lastName: "Badusha")
    ].sorted()
    
    var body: some View {
        List(users){ user in
            Text(user.firstName + " " + user.lastName)
            
        }
    }
    
}

#Preview {
    ContentView()
}
