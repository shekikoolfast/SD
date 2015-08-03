//
//  SDProductsViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 03/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDProductsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func handleTapOnAllProducts(sender: AnyObject)
    {
        performSegueWithIdentifier("segueAllProducts", sender: nil)
    }
    
    @IBAction func handleTapOnFavoriteProducts(sender: AnyObject)
    {
        performSegueWithIdentifier("segueFavoriteProducts", sender: nil)
    }
    
    @IBAction func handleTapOnStockoutProducts(sender: AnyObject)
    {
        performSegueWithIdentifier("segueStockoutProducts", sender: nil)
    }
    
    @IBAction func handleTapOnRecentlyViewedProducts(sender: AnyObject)
    {
        performSegueWithIdentifier("seugeRecentlyViewedProducts", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
