//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 9.1.25..
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
