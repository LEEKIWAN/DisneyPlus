//
//  DownloadView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            Text("Downloads")
        }
        .foregroundColor(.white)
    }
}

struct DownloadsView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadsView()
    }
}
