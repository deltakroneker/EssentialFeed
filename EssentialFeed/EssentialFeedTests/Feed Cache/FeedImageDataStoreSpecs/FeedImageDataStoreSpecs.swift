//
//  FeedImageDataStoreSpecs.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 20. 10. 2026..
//

import Foundation

protocol FeedImageDataStoreSpecs {
	func test_retrieveImageData_deliversNotFoundWhenEmpty() throws
	func test_retrieveImageData_deliversNotFoundWhenStoredDataURLDoesNotMatch() throws
	func test_retrieveImageData_deliversFoundDataWhenThereIsAStoredImageDataMatchingURL() throws
	func test_retrieveImageData_deliversLastInsertedValue() throws
}
