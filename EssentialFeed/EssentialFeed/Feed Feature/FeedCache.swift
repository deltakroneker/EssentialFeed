//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 22.9.25..
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
