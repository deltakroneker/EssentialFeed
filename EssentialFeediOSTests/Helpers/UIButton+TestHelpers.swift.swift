//
//  UIButton+TestHelpers.swift.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 27.8.25..
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
