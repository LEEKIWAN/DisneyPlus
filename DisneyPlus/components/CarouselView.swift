//
//  CarouselView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/15.
//

import SwiftUI

struct CarouselView: View {
    
    let movies: [Movie] = Movie.promos
    
    @State var selectedMovie: Movie?
    
    private var width: CGFloat {
        return UIScreen.screenWidth * 0.9
    }
    
    private var height: CGFloat {
        return UIScreen.screenHeight * 0.6
    }
    
    
    var body: some View {
        TabView {
            
            ForEach(movies) { movie in
                CarouselItemView(movie: movie) { selectedMovie in
                    self.selectedMovie = selectedMovie
                }
                .frame(width: width, height: height)
                .sheet(item: $selectedMovie) { movie in
                    Text(movie.title)
                }
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//        .tabViewStyle(.automatic)
        
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            CarouselView()
        }
        
    }
}
