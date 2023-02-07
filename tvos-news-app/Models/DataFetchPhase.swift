//
//  DataFetchPhase.swift
//  tvos-news-app
//
//  Created by Lucas Vallejo on 06/02/2023.
//

import Foundation

enum DataFetchPhase<T> {
    case empty
    case success(T)
    case failure(Error)
    
    var value: T? {
        if case .success(let value) = self {
            return value
        }
        return nil
    }
}
