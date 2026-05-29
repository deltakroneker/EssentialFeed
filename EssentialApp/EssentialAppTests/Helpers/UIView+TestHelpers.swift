//
//  UIView+TestHelpers.swift
//  EssentialApp
//
//  Created by Nikola Milic on 29. 5. 2026..
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
