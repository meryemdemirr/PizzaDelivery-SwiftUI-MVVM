//
//  CategoriesItem.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 19.11.2025.
//

import SwiftUI

struct CategoriesItem: View {
    
    var kategori: Categories
    
    var body: some View {
        VStack {
            Image(kategori.gorsel)
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .cornerRadius(10)
            
            Text(kategori.isim)
                .font(.headline)
                .foregroundColor(.black)
                .lineLimit(1)
            
            HStack {
                if let indirim = kategori.indirimliFiyat {
                    HStack(spacing: 4) {
                        Text("\(kategori.temelFiyat, specifier: "%.0f") ₺")
                            .foregroundColor(.gray)
                            .strikethrough()
                        Text("\(indirim, specifier: "%.0f") ₺")
                            .foregroundColor(.red) .bold()
                    }
                } else {
                    Text("\(kategori.temelFiyat, specifier: "%.0f") ₺")
                        .foregroundColor(.black)
                        .bold()
                }
                
                Button(action: {
                    print("sepete eklendi") }) {
                        Text("Sepete Ekle")
                            .font(.caption)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 6)
                            .foregroundColor(.white)
                            .background(Color("colorr"))
                            .cornerRadius(8)
                    }
            }
        }
        .padding(12)                       // Kart içi boşluk
        .frame(maxWidth: .infinity)        // Kart genişliği eşit kalır
        .background(Color.white)           // Kart arkaplanı
        .cornerRadius(15)                  // Köşeler
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 3)
    }
}

#Preview {
    CategoriesItem(kategori: Categories( id: 1, isim: "Cheese Pizza", gorsel: "cheese pizza", temelFiyat: 180, indirimliFiyat: 100, puan: 4.8, aciklama: "Test açıklama", boyutSecenekliMi: true ))
}
