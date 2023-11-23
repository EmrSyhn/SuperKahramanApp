//
//  DetayView.swift
//  SuperKahraman
//
//  Created by Emir Seyhan on 23.11.2023.
//

import SwiftUI

struct DetayView: View {
    var sayfaDetay : KahramanModel
    var body: some View {
        
            VStack{
                MapView(coordinate:
                            sayfaDetay.koordiantLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.4)
                .edgesIgnoringSafeArea(.top)
                
                OzelGorsel(image: Image(sayfaDetay.gorsel))
                    .offset(y:UIScreen.main.bounds.width * -0.44)
                    .padding(.bottom,UIScreen.main.bounds.width * -0.12)
                VStack{
                    HStack{
                        Text(sayfaDetay.isim)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.cyan)
                        Spacer()
                        Text(sayfaDetay.gercekIsim)
                            .fontWeight(.heavy)
                            .foregroundStyle(.orange)
                    }
                    HStack{
                        Text(sayfaDetay.sehir)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.gray)
                        Spacer()
                        Text(sayfaDetay.meslek)
                            .fontWeight(.heavy)
                            .foregroundStyle(.black)
                    }
                }.padding()
                    .offset(y:UIScreen.main.bounds.height * -0.2)
                Spacer()
        }
    }
}

#Preview {
    DetayView(sayfaDetay: superKahramanDizisi[2])
}
