//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 22.9.25..
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
