//
//  SqureButton.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct SqureButton: View {
    let searchCategory: SearchCategory
    
    var body: some View {
        
        Button {
            print("tttt")
        } label: {
            VStack(spacing: 10) {
                Image(systemName: searchCategory.systemImage)
                Text(searchCategory.title)
            }
            .foregroundColor(.white)
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.darkBluishGrayColor)
            .cornerRadius(10)
            .shadow(color: .darkGrayColor, radius: 5, x: 5, y: 5)
            .shadow(color: .darkGrayColor, radius: 5, x: -5, y: -5)
        }

        
        
        
    }
}

struct SqureButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            SqureButton(searchCategory: SearchCategory(title: "Original", systemImage: "star.fill"))
        }
        
    }
}
