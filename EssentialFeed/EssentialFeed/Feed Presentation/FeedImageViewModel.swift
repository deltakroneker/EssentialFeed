//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 8.9.25..
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}
