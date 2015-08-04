//
//  SDProductDetailsTableViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 04/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDProductDetailsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var refreshCtrl = UIRefreshControl()
        var title = NSAttributedString(string: "Refreshing Product Details")
        refreshCtrl.attributedTitle = title
        refreshCtrl.addTarget(self, action: "handlePullToRefresh:", forControlEvents: .ValueChanged)
        refreshControl = refreshCtrl
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handlePullToRefresh(sender: UIRefreshControl)
    {
        sleep(2)
        sender.endRefreshing()
    }
}

extension SDProductDetailsTableViewController: UITableViewDelegate
{
    
}
