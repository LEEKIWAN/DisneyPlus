//
//  BackgroundGraidientView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

struct BackgroundGradientView: View {
    enum Axis {
        case horizontal
        case vertical
    }
    
    let axis: Axis
    
    var startPoint: UnitPoint {
        return axis == .horizontal ? .leading : .top
    }
    
    var endPoint: UnitPoint {
        return axis == .horizontal ? .trailing : .bottom
    }
    
    var body: some View {
        LinearGradient(colors: [.darkGrayColor, .darkBluishGrayColor], startPoint: startPoint, endPoint: endPoint)
            .ignoresSafeArea()
    }
}

struct BackgroundGradientView_previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradientView(axis: .horizontal)
    }
}
