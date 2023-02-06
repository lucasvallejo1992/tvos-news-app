//
//  ContentView.swift
//  tvos-news-app
//
//  Created by Lucas Vallejo on 06/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Text("News")
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
                .tag("news")
            Text("Saved")
                .tabItem {
                    Label("Saved", systemImage: "bookmark")
                }
                .tag("saved")
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag("search")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
