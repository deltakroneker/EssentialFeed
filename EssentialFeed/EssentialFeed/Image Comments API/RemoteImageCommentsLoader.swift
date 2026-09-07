//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 7. 9. 2026..
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
