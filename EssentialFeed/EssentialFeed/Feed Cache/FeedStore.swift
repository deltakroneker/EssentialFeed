//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 3.1.25..
//

import Foundation

public typealias CachedFeed = (feed: [LocalFeedImage], timestamp: Date)

public protocol FeedStore {
    func deleteCachedFeed() throws
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws
    func retrieve() throws -> CachedFeed?
}
