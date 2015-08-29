//
//  SDListingStatusTableViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 02/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDListingStatusTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btnSearch = UIBarButtonItem(barButtonSystemItem: .Search, target: self, action: "handleTapOnSearch")
        self.navigationItem.rightBarButtonItem = btnSearch
        
        let refreshCtrl = UIRefreshControl()
        let title = NSAttributedString(string: "Refreshing Product Listing status")
        refreshCtrl.attributedTitle = title
        refreshCtrl.addTarget(self, action: "handlePullToRefresh:", forControlEvents: .ValueChanged)
        refreshControl = refreshCtrl
    }
    
    func handlePullToRefresh(sender: UIRefreshControl)
    {
        sleep(2)
        sender.endRefreshing()
    }
    
    func handleTapOnSearch()
    {
        let controller = UISearchController(searchResultsController: nil)
        controller.searchResultsUpdater = self
        controller.hidesNavigationBarDuringPresentation = false
        controller.searchBar.sizeToFit()
        controller.searchBar.scopeButtonTitles = ["Upload ID", "SUPC"];
        presentViewController(controller, animated: true) { () -> Void in

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SDListingStatusTableViewController
{
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("listingCell", forIndexPath: indexPath)
        return cell
    }
}

extension SDListingStatusTableViewController
{
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

extension SDListingStatusTableViewController: UISearchResultsUpdating
{
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
    }
}
