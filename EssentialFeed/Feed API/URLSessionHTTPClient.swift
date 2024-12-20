//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 20.12.24..
//

import Foundation

public class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    private struct UnexpectedValuesRepresentationError: Error {}
    
    public func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void) {
        session.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data, let response = response as? HTTPURLResponse {
                completion(.succes(data, response))
            } else {
                completion(.failure(UnexpectedValuesRepresentationError()))
            }
        }.resume()
    }
}
