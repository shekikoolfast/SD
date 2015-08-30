//
//  SDOrdersViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/08/15.
//  Copyright © 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDOrdersViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SDOrdersViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ordersCell", forIndexPath: indexPath)
        return cell
    }
}
