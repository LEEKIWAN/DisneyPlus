//
//  ChannelView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct ChannelView: View {
    let channels: [Channel]
    var body: some View {
        HStack {
            ForEach(channels, id: \.self) { channel in
                Button {
                    print(channel)
                } label: {
                    Image(channel.rawValue)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background {
                            BackgroundGradientView(axis: .vertical)
                        }
                }
                .cornerRadius(10)
                .shadow(radius: 10)
            }
        }
        .padding()
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView(axis: .horizontal)
            ChannelView(channels: Channel.allCases)
        }
    }
}
