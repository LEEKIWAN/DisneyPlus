//
//  DisneyPlusApp.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

@main
struct DisneyPlusApp: App {
    var body: some Scene {
        WindowGroup {
            let tabViewRouter = TabViewRouter()
            
            SplashView()
                .environmentObject(tabViewRouter)
        }
    }
}
