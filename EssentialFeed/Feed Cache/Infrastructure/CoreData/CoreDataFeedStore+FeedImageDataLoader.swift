//
//  CoreDataFeedStore+FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 16.9.25..
//

import Foundation

extension CoreDataFeedStore: FeedImageDataStore {
    
    public func insert(_ data: Data, for url: URL, completion: @escaping (FeedImageDataStore.InsertionResult) -> Void) {
        perform { context in
            completion(Result {
                let image = try? ManagedFeedImage.first(with: url, in: context)
                
                image?.data = data
                try? context.save()
            })
        }
    }
    
    public func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.RetrievalResult) -> Void) {
        perform { context in
            completion(Result {
                try ManagedFeedImage.first(with: url, in: context)?.data
            })
        }
    }
    
}
