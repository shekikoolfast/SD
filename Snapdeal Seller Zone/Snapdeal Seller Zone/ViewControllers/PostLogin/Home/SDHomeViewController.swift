//
//  SDHomeViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/08/15.
//  Copyright © 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDHomeViewController: UIViewController {

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

extension SDHomeViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath)
        return cell
    }
}
