//
//  FeedLoaderStub.swift
//  EssentialApp
//
//  Created by Nikola Milic on 22.9.25..
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
