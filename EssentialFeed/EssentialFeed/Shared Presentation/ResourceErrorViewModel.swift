//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 18. 9. 2026..
//

public struct ResourceErrorViewModel {
	public let message: String?
	
	static var noError: ResourceErrorViewModel {
		return ResourceErrorViewModel(message: nil)
	}
	
	static func error(message: String) -> ResourceErrorViewModel {
		return ResourceErrorViewModel(message: message)
	}
}
