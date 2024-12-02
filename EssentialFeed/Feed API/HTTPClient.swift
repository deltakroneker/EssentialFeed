//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 2.12.24..
//

import Foundation

public enum HTTPClientResult {
    case succes(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
