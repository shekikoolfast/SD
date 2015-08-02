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
        var btnSearch = UIBarButtonItem(barButtonSystemItem: .Search, target: self, action: "handleTapOnSearch")
        self.navigationItem.rightBarButtonItem = btnSearch
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

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 10
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("listingCell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }

}

extension SDListingStatusTableViewController: UISearchResultsUpdating
{
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
    }
}
