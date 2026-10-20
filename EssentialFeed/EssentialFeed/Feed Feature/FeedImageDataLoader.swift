//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 28.8.25..
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
