//
//  SuperKahramanModel.swift
//  SuperKahraman
//
//  Created by Emir Seyhan on 23.11.2023.
//

import Foundation
import SwiftUI
import CoreLocation


struct KahramanModel : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var meslek :String
    var sehir :String
    var gorsel : String
    var koordinat :Koordinat
    
    var koordiantLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latiude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    var latiude :Double
    var longitude :Double
}

let batman = KahramanModel(isim: "Batman", gercekIsim: "Bruce Wane", meslek: "Is adami", sehir: "Gotham City", gorsel: "batman", koordinat: Koordinat(latiude: 40.7551645214285, longitude: -74.1334971055982))

let spiderman = KahramanModel(isim: "SpiderMan", gercekIsim: "Peter Parker", meslek: "Gazateci/Fotoğrafçı", sehir: "New York", gorsel: "spiderman", koordinat: Koordinat(latiude: 40.755202342981164 , longitude: -73.98771271114283))

let ironman = KahramanModel(isim: "Iron Man", gercekIsim: "Tony Stark", meslek: "Is adami", sehir: "Los Angel", gorsel: "ironman", koordinat: Koordinat(latiude: 40.749046, longitude: -73.992929))

let thor = KahramanModel(isim: "Thor", gercekIsim: "Chris Hemsworth", meslek: "Tanrı", sehir: "Härnösand", gorsel: "thor", koordinat: Koordinat(latiude: 62.642390, longitude: 17.931179))


let superKahramanDizisi = [batman,spiderman,ironman,thor]
