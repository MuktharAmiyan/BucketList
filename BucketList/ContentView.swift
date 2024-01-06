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
    let locations = [
        Location(
            name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)
        ),
        Location(
            name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076)
        )
    ]
    var body: some View {
        VStack{
            Map{
                ForEach(locations){ location in
                    Annotation(location.name, coordinate: location.coordinate){
                        Text(location.name)
                            .font(.title)
                            .padding()
                            .background(.blue.gradient)
                            .foregroundStyle(.white)
                            .clipShape(Capsule())
                    }
                    .annotationTitles(.hidden)
                    
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
