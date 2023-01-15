//
//  LogoHeaderView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            LogoHeaderView()
        }
    }
}
