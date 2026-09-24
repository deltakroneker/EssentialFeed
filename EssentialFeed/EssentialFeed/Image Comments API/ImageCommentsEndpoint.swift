//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 24. 9. 2026..
//


import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}