//
//  SDSellerDetailsViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 07/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDSellerDetailsViewController: UITableViewController {

    @IBOutlet weak var tfMobileNo: SDHelpTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tfMobileNo.helpDelegate = self
    }

}

extension SDSellerDetailsViewController: SDHelpTextFieldDelegate
{
    func buttonTappedOn(button: UIButton)
    {
        performSegueWithIdentifier("pop", sender: nil)
    }
}
