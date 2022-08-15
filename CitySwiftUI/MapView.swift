//
//  MapView.swift
//  CitySwiftUI
//
//  Created by Hasan Kaya on 5.08.2022.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landMarkArray[0].locationCoordinate)
    }
}
