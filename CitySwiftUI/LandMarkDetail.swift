//
//  LandMarkDetail.swift
//  CitySwiftUI
//
//  Created by Hasan Kaya on 5.08.2022.
//

import SwiftUI

struct LandMarkDetail: View {
    var choosenCity : LandMark
    var body: some View {
        ZStack {
            MapView(coordinate: choosenCity.locationCoordinate).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.6).offset(y: UIScreen.main.bounds.height * -0.45)
            EditedImage(image: choosenCity.picture).frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.3)
                .offset(y: UIScreen.main.bounds.height * -0.16)
            VStack(alignment: .leading){
                Text(choosenCity.name)
                    .font(.largeTitle).foregroundColor(.mint.opacity(0.8)).padding()
                HStack {
                    Text(choosenCity.countryName).font(.title2).padding()
                    Spacer()
                    Text(choosenCity.type).font(.title2).padding()
                }
            }
            
            
        }
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
      LandMarkDetail(choosenCity: pisa)
    }
}
