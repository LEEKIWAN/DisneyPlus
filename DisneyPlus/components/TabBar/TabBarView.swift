//
//  TabBarView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        HStack {
            TabBarIcon(page: .home, systemIconName: "house", tabName: "Home")
            TabBarIcon(page: .search, systemIconName: "magnifyingglass", tabName: "Search")
            TabBarIcon(page: .downloads, systemIconName: "square.and.arrow.down", tabName: "Downloads")
            TabBarIcon(page: .profile, systemIconName: "person.circle", tabName: "Profile")
        }
        .frame(width: UIScreen.screenWidth, height: 65)
        .background {
            Color.darkBluishGrayColor
        }
        
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(TabViewRouter())
            .preferredColorScheme(.dark)
    }
}
