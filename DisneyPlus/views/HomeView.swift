//
//  HomeView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            
            ScrollView {
                VStack {
                    LogoHeaderView()
                        .frame(maxHeight: 100)
                    
                    CarouselView()
                        .frame(height: UIScreen.screenWidth * 0.9 * 0.6)
                    
                    ChannelView(channels: Channel.allCases)
                    
                    ForEach(MovieSection.movieSections) { movieSection in
                        MovieSectionView(movieSection: movieSection)
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
