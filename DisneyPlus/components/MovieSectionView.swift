//
//  MovieSectionView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct MovieSectionView: View {
    
    let movieSection: MovieSection
    
//    @State var selectedMovie: Movie?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(movieSection.sectionName)
                .foregroundColor(.gray)
                .bold()
                .font(.title3)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    
                    ForEach(movieSection.movies) { movie in
                        
                        Button {
                            print("movie Tapped: \(movie.title)")
                        } label: {
                            Image(movie.posterImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                                .frame(width: 150)
                        }

                    }
                }
            }
        }
        .padding()
        
    
    }
}

struct MovieSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            MovieSectionView(movieSection: MovieSection.recommended)
        }
        
    }
}
