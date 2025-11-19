//
//  Categories.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 19.11.2025.
//

import Foundation

struct Categories: Identifiable {
    let id: Int
    let isim: String
    let gorsel: String
    let temelFiyat: Double          // basePrice
    let indirimliFiyat: Double?     // yenifiyat
    let puan: Double                // rating
    let aciklama: String
    let boyutSecenekliMi: Bool      // hasSizeOptions
}
