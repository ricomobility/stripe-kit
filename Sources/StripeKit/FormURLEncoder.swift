//
//  File.swift
//  
//
//  Created by Ravil Khusainov on 12.09.23.
//

import Foundation

public struct FormURLEncoder {
    
    func encode<T>(_ content: T) throws -> Data where T: URLEncodable {
        var components = URLComponents()
        components.queryItems = content.queryItems
        guard let query = components.query else { throw URLEncodeError.emptyQuery }
        guard let data = query.data(using: .utf8) else { throw URLEncodeError.transformToData }
        return data
    }
}

public enum URLEncodeError: Error {
    case emptyQuery
    case transformToData
}
