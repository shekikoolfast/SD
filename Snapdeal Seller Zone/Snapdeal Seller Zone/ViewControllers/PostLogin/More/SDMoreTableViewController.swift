//
//  SDMoreTableViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 02/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDMoreTableViewController: UITableViewController {

    var arrDataSource = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrDataSource += ["Notifications", "Rate this App", "My Profile", "Raise a Query", "Business Health", "Logout"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SDMoreTableViewController: UITableViewDataSource
{
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDataSource.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = arrDataSource[indexPath.row]
        return cell
    }
}

extension SDMoreTableViewController: UITableViewDelegate
{
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        if indexPath.row == arrDataSource.count-1
        {
            let tabController = parentViewController?.parentViewController as! SDTabBarController
            
            let story = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let loginController = story.instantiateViewControllerWithIdentifier("SDLoginViewController") as! SDLoginViewController
            tabController.navigationController?.setViewControllers([loginController], animated: true)
            return
        }
        performSegueWithIdentifier("segueNotification", sender: nil)
    }
}

