//
//  OzelGorsel.swift
//  SuperKahraman
//
//  Created by Emir Seyhan on 23.11.2023.
//

import SwiftUI

struct OzelGorsel: View {
    var image :Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipped()
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
    }
}

#Preview {
    OzelGorsel(image: Image(superKahramanDizisi[0].gorsel))
}
