//
//  CarouselItemView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/15.
//

import SwiftUI

struct CarouselItemView: View {
    
    let movie: Movie
    
    let selectedMovie: (Movie) -> Void
    
    var body: some View {
        
            Button {
                print("promo selected")
            } label: {
                
                ZStack(alignment: .bottom) {
                    Image(movie.promoImage)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                    
                    Text(movie.title)
                        .foregroundColor(.white)
                        .padding(.vertical, 3)
                        .frame(maxWidth: .infinity)
                        .background(Color.black.opacity(0.5).blur(radius: 5))
            }

            
        }
        
        
    }
}
    
struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            CarouselItemView(movie: Movie.promos.first!, selectedMovie: { selectedMovie in
                print(selectedMovie)
            })
        }
        
    }
}
