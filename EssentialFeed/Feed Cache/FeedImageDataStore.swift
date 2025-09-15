//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 15.9.25..
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
