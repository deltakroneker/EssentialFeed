//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 27.8.25..
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
