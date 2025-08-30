//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 29.8.25..
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
