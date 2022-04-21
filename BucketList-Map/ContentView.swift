//
//  ContentView.swift
//  BucketList-Map
//
//  Created by Jessica Perez on 4/21/22.
//

import SwiftUI
import MapKit

//mock data
struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    //MARK: -Properties
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    

        let locations = [
            Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.141)),
            Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
        ]
    var body: some View {
        Map(coordinateRegion: $mapRegion, annotationItems: locations) { locations in
            
            MapAnnotation(coordinate: locations.coordinate) {
                VStack{
                    Circle()
                        .stroke(.red,lineWidth: 3)
                        .frame(width: 44, height: 44)
                }
              
            }
        
        }
        
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
