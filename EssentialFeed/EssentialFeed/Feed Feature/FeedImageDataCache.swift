//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 22.9.25..
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
