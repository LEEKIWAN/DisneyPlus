//
//  TabViewRouter.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import SwiftUI

final class TabViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}


extension TabViewRouter {
    enum Page {
        case home
        case search
        case downloads
        case profile
    }
}
