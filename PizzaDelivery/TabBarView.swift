//
//  TabBarView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 18.11.2025.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        NavigationStack {
            TabView {
                Home()
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                List()
                    .tabItem {
                        Image(systemName: "list.bullet")
                    }
                
                Cart()
                    .tabItem {
                        Image(systemName: "cart")
                    }
            }
        }
    }
}

#Preview {
    TabBarView()
}
