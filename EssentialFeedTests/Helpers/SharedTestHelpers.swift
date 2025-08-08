//
//  SharedTestHelpers.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 14.1.25..
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return  URL(string: "https://any-url.com")!
}
