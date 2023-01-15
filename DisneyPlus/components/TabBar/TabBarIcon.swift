//
//  TabBarIcon.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import Foundation
import SwiftUI


struct TabBarIcon: View {
    @EnvironmentObject var tabViewRouter: TabViewRouter
    
    let page: TabViewRouter.Page
    let systemIconName: String
    let tabName: String
    
    private var width: CGFloat {
        return UIScreen.screenWidth / 4
    }
    
    private var height: CGFloat {
        return UIScreen.screenHeight / 56
    }
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            
            Text(tabName)
                .font(.footnote)
        }
        .foregroundColor(tabViewRouter.currentPage == page ? .white : .gray)
        .onTapGesture {
            tabViewRouter.currentPage = page
        }
    }
    
}

struct tt_preViews: PreviewProvider {
    static var previews: some View {
        TabBarIcon(page: .home, systemIconName: "house", tabName: "home")
            .environmentObject(TabViewRouter())
            .preferredColorScheme(.dark)
    }
}
