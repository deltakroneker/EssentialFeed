//
//  UIButton+TestHelpers.swift.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 27.8.25..
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
