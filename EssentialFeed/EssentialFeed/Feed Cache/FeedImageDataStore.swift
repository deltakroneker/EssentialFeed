//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 15.9.25..
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
