//
//  HomeView.swift
//  Neshinavi2
//
//  Created by 松浦壮吾 on 2025/06/09.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Image(systemName: "house")
                    Text("MAP")
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorite")
                }
        }
        .tint(.orange)
    }
}

#Preview {
    HomeView()
}
