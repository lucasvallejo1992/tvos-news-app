//
//  NewsAPIResponse.swift
//  tvos-news-app
//
//  Created by Lucas Vallejo on 06/02/2023.
//

import Foundation

struct NewsAPIResponse: Decodable {
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
}
