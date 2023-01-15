//
//  SearchView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            Text("Search")
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
