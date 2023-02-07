//
//  tvos_news_appApp.swift
//  tvos-news-app
//
//  Created by Lucas Vallejo on 06/02/2023.
//

import SwiftUI

@main
struct tvos_news_appApp: App {
    @StateObject private var bookmarkVM = ArticleBookmarkViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(bookmarkVM)
        }
    }
}
