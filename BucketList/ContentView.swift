//
//  ContentView.swift
//  BucketList
//
//  Created by Mukthar Amiyan on 06/01/24.
//
import MapKit
import SwiftUI

struct ContentView: View {
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    var body: some View {
        VStack{
            Map(position: $position)
                .mapStyle(.hybrid(elevation: .realistic))
                .onMapCameraChange(frequency: .continuous) { context in
                    print(context.region)
                }
            HStack(spacing:50){
                Button("Paris")
                {
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                }
                Button("Tokyo")
                {
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.6897, longitude: 139.692), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
