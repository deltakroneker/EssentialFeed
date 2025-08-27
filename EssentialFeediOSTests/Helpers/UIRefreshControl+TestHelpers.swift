//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 27.8.25..
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .valueChanged)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
