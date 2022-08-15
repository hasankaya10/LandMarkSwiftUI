//
//  LandmarkModel.swift
//  CitySwiftUI
//
//  Created by Hasan Kaya on 5.08.2022.
//

import SwiftUI
import CoreLocation
struct LandMark : Identifiable {
    var id = UUID()
    var name : String
    var countryName : String
    var picture : Image
    var type : String
    var coordinate : Coordinates
    
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}
struct Coordinates {
    var latitude : Double
    var longitude : Double
}
let pisa = LandMark(name: "Pisa", countryName: "Italy", picture: Image("pisa"), type: "Tower",coordinate: Coordinates(latitude: 43.7166 , longitude: 10.4))
let eiffel = LandMark(name: "Eiffel", countryName: "France", picture: Image("eiffel"), type: "Tower",coordinate: Coordinates(latitude: 48.858093 , longitude: 2.294694))
let colleseo = LandMark(name: "Colleseo", countryName: "Italy", picture: Image("colleseo"), type: "Historical Area",coordinate: Coordinates(latitude: 41.89052 , longitude: 12.4923))
let londonBridge = LandMark(name: "London Bridge", countryName: "Britian", picture: Image("londonbridge"), type: "Bridge",coordinate: Coordinates(latitude: 51.5048 , longitude: -0.086))
let landMarkArray = [pisa,eiffel,colleseo,londonBridge]
