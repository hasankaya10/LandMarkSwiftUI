//
//  ContentView.swift
//  CitySwiftUI
//
//  Created by Hasan Kaya on 5.08.2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(landMarkArray) { landmark in
                    NavigationLink(destination: LandMarkDetail(choosenCity: landmark)) {
                        HStack {
                            landmark.picture.resizable()
                                .frame(width: 50, height: 50)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(25)
                            Text(landmark.name)
                        }
                    }
                }.navigationTitle("Landmark Book")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
