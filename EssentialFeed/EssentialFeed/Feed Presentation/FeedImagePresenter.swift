//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 8.9.25..
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
