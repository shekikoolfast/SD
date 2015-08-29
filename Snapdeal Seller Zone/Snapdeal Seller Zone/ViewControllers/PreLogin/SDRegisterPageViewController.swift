//
//  SDRegisterPageViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 11/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDRegisterPageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataSource = self
        delegate = self
        let sellerVC = storyboard?.instantiateViewControllerWithIdentifier("SDSellerDetailsViewController") as! SDSellerDetailsViewController
        _ = storyboard?.instantiateViewControllerWithIdentifier("SDBusinessDetailsTableViewController") as! SDBusinessDetailsTableViewController
        _ = storyboard?.instantiateViewControllerWithIdentifier("SDContractViewController") as! SDContractViewController
        setViewControllers([sellerVC], direction: .Forward, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension SDRegisterPageViewController: UIPageViewControllerDataSource
{
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        if viewController is SDSellerDetailsViewController
        {
            return nil
        }
        else if viewController is SDBusinessDetailsTableViewController
        {
            let sellerVC = storyboard?.instantiateViewControllerWithIdentifier("SDSellerDetailsViewController") as! SDSellerDetailsViewController
            return sellerVC
        }
        else if viewController is SDContractViewController
        {
            let sellerVC = storyboard?.instantiateViewControllerWithIdentifier("SDBusinessDetailsTableViewController") as! SDBusinessDetailsTableViewController
            return sellerVC
        }
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        if viewController is SDContractViewController
        {
            return nil
        }
        else if viewController is SDBusinessDetailsTableViewController
        {
            let sellerVC = storyboard?.instantiateViewControllerWithIdentifier("SDContractViewController") as! SDContractViewController
            return sellerVC
        }
        else if viewController is SDSellerDetailsViewController
        {
            let sellerVC = storyboard?.instantiateViewControllerWithIdentifier("SDBusinessDetailsTableViewController") as! SDBusinessDetailsTableViewController
            return sellerVC
        }
        return nil
    }
}

extension SDRegisterPageViewController: UIPageViewControllerDelegate
{
    
}
