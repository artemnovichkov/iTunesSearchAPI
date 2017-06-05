//
//  Error.swift
//  iTunesSearchAPI
//
//  Created by Sven Bacia on 27.02.16.
//  Copyright © 2016 Sven Bacia. All rights reserved.
//

import Foundation

public enum SearchError: Error {
    case unknown
    case invalidSearchTerm
    case invalidURL
    case invalidServerResponse
    case serverError(Int)
    case invalidJSON
    case error(Error)
}

extension SearchError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .error(let error): return error.localizedDescription
        default: return localizedDescription
        }
    }
}
