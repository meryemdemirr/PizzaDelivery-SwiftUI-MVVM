//
//  Home.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 19.11.2025.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 15) {
                    HStack {
                        Image("user")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.leading)
                        
                        Text("Meryem Demir")
                            .font(.headline)
                        
                        Spacer()
                        
                        NavigationLink(destination: Cart()) {
                            Image("sepet")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding(.trailing, 15)
                        }
                    }
                    
                    VStack(spacing: 15) {
                        Text("Extra Discount")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                        
                        Image("pizzasale")
                            .resizable()
                            .cornerRadius(10)
                            .scaledToFit()
                            .padding(.horizontal)
                    }
                    .padding(.vertical, 15)
                        
                    
                    VStack(spacing: 20) {
                        Text("Popular Foods")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                        
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible(),spacing: 20)], spacing: 20) {
                            ForEach(viewModel.kategorilerListesi ) { kategori in
                                CategoriesItem(kategori: kategori)
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                    
                    
                }
            }
            .onAppear {
                viewModel.fetchKategoriler()
            }

        }
    }
}

#Preview {
    Home()
}
