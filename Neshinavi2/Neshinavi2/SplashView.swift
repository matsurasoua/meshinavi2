//
//  ContentView.swift
//  Neshinavi2
//
//  Created by 松浦壮吾 on 2025/06/07.
//

import SwiftUI

struct SplashView: View {
    @State private var toHome: Bool = false
    
    var body: some View {
        if toHome {
            HomeView()
        } else {
            splashView
        }
    }
    var splashView: some View {
        Image(.meshinaviSplash)
            .resizable()
            .ignoresSafeArea(edges: .all)
            .onAppear {
                // 3秒後に isActive を true にする
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        toHome = true
                    }
                }
            }
    }
}

#Preview {
    SplashView()
}
