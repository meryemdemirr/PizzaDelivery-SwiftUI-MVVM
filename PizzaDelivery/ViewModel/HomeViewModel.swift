//
//  HomeViewModel.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 19.11.2025.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var kategorilerListesi: [Categories] = []
    
    func fetchKategoriler() {
        var liste = [Categories]()
        
        let k1 = Categories(
            id: 1,
            isim: "Cheese Pizza",
            gorsel: "cheese pizza",
            temelFiyat: 240,
            indirimliFiyat: nil,
            puan: 4.9,
            aciklama: "A classic cheese pizza topped with rich tomato sauce.",
            boyutSecenekliMi: true
        )

        let k2 = Categories(
            id: 2,
            isim: "Chicken Burger",
            gorsel: "burger",
            temelFiyat: 220,
            indirimliFiyat: nil,
            puan: 3.9,
            aciklama: "pppp",
            boyutSecenekliMi: true
        )

        let k3 = Categories(
            id: 3,
            isim: "Pasta",
            gorsel: "pasta3",
            temelFiyat: 180,
            indirimliFiyat: nil,
            puan: 4.2,
            aciklama: "Simple and delicious pasta.",
            boyutSecenekliMi: false
        )
        
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        
        kategorilerListesi = liste
    }
}
