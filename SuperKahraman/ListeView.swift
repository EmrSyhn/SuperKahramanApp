//
//  ContentView.swift
//  SuperKahraman
//
//  Created by Emir Seyhan on 23.11.2023.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(superKahramanDizisi){
                superkahraman in NavigationLink(destination: DetayView(sayfaDetay: superkahraman), label: {
                    HStack {
                        OzelGorsel(image: Image(superkahraman.gorsel))
                            .padding(.zero)
                            .frame(width: 100)
                        Text(superkahraman.isim)
                    }
                })
            }.navigationTitle(Text("SuperKahraman Kitabı"))
        }
    }
}

#Preview {
    ListeView()
}
