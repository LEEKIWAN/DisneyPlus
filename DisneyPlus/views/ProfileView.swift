//
//  ProfileView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            Text("Profile")
        }
        .foregroundColor(.white)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
