//
//  FeedViewController.swift
//  EssentialFeed
//
//  Created by Nikola Milic on 18.8.25..
//

import UIKit
import EssentialFeed

public final class FeedViewController: UITableViewController {
    private var loader: FeedLoader?
    private var viewAppeared = false
    
    public convenience init(loader: FeedLoader) {
        self.init()
        self.loader = loader
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(load), for: .valueChanged)
        
        load()
    }
    
    public override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        
        if viewAppeared == false {
            refreshControl?.beginRefreshing()
            viewAppeared = true
        }
    }
    
    @objc private func load() {
        refreshControl?.beginRefreshing()
        loader?.load { [weak self] _ in
            self?.refreshControl?.endRefreshing()
        }
    }
}
