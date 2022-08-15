//
//  EditedImage.swift
//  CitySwiftUI
//
//  Created by Hasan Kaya on 5.08.2022.
//

import SwiftUI

struct EditedImage: View {
    var image : Image
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fill)
            .frame(width: width * 0.5
                   , height: height * 0.2).clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius: 20)
            .padding()
    }
}

struct EditedImage_Previews: PreviewProvider {
    static var previews: some View {
        EditedImage(image: Image("eiffel"))
    }
}
