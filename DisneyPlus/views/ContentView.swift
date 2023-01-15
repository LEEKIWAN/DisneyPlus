//
//  ContentView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var tabViewRouter: TabViewRouter
    
    var body: some View {
        ZStack {
            Color.darkBluishGrayColor
                .ignoresSafeArea()
            
            VStack(spacing: 0.0) {
                tabPage()
                TabBarView()
            }
        }

        
    }
    
    
    @ViewBuilder
    private func tabPage() -> some View {
        switch tabViewRouter.currentPage {
        case .home:
            HomeView()
        case .search:
            SearchView()
        case .downloads:
            DownloadsView()
        case .profile:
            ProfileView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TabViewRouter())
            .preferredColorScheme(.dark)
    }
}
