//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 24. 9. 2026..
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
