//
//  SplashView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isGIFFinished = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            if isGIFFinished {
                ContentView()
            } else {
                SplashRepresentableView(isGIFFinished: $isGIFFinished)
                    .frame(width: 300, height: 300)
            }
        }
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
