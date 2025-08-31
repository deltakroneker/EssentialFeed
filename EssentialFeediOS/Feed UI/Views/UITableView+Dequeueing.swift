//
//  UITableView+Dequeueing.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 31.8.25..
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
