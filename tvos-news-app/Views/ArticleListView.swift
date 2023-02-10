//
//  ArticleListView.swift
//  tvos-news-app
//
//  Created by Lucas Vallejo on 10/02/2023.
//

import SwiftUI

struct ArticleListView: View {
    let articles: [Article]
    
    var body: some View {
        rootView
    }
    
    private var gridView: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: gridSpacing) {
                ForEach(articles) { article in
                    NavigationLink {
                        ArticleDetailView(article: article)
                    } label: {
                        ArticleItemView(article: article)
                            .frame(width: 400, height: 400)
                    }
                    .buttonStyle(.card)
                }
            }
            .padding()
        }
    }
    
    private var gridItems: [GridItem] {
        [GridItem(.adaptive(minimum: 400), spacing: 32)]
    }
    
    private var gridSpacing: CGFloat? {
        48
    }
    
    @ViewBuilder
    private var rootView: some View {
        gridView
    }
}

extension URL: Identifiable {
    public var id: String { absoluteString }
}

struct ArticleListView_Previews: PreviewProvider {
    @StateObject static var articleBookmarkVM = ArticleBookmarkViewModel.shared
    
    static var previews: some View {
        NavigationView {
            ArticleListView(articles: Article.previewData)
                .environmentObject(articleBookmarkVM)
        }
    }
}
