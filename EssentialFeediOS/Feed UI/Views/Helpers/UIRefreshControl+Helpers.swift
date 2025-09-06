//
//  UIRefreshControl+Helpers.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 6.9.25..
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
