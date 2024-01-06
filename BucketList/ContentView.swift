//
//  ContentView.swift
//  BucketList
//
//  Created by Mukthar Amiyan on 06/01/24.
//
import MapKit
import SwiftUI

struct Location :Identifiable {
    let id = UUID()
    var name :String
    var coordinate : CLLocationCoordinate2D
}


struct ContentView: View {
     
    var body: some View {
        VStack{
            MapReader{ proxy in
                Map()
                    .onTapGesture { position in
                        if let coordinate = proxy.convert(position, from: .local ){
                            print(coordinate)
                        }
                    }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
