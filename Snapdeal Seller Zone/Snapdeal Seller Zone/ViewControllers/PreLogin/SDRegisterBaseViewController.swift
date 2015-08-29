//
//  SDRegisterBaseViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 07/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDRegisterBaseViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleTapOnSegmentControl(sender: UISegmentedControl)
    {
        let pageController = childViewControllers[0] as! SDRegisterPageViewController
        switch sender.selectedSegmentIndex
        {
        case 0:
            let sellerVC = storyboard?.instantiateViewControllerWithIdentifier("SDSellerDetailsViewController") as! SDSellerDetailsViewController
            pageController.setViewControllers([sellerVC], direction: .Reverse, animated: true, completion: nil)
            
        case 1:
            _ = storyboard?.instantiateViewControllerWithIdentifier("SDBusinessDetailsTableViewController") as! SDBusinessDetailsTableViewController
//            let controllers = pageController.viewControllers as! [UIViewController]
//            if controllers[0] is SDSellerDetailsViewController
//            {
//                pageController.setViewControllers([businessVC], direction: .Forward, animated: true, completion: nil)
//            }
//            else
//            {
//                pageController.setViewControllers([businessVC], direction: .Reverse, animated: true, completion: nil)
//            }
            
            
        case 2:
            let contractVC = storyboard?.instantiateViewControllerWithIdentifier("SDContractViewController") as! SDContractViewController
            pageController.setViewControllers([contractVC], direction: .Forward, animated: true, completion: nil)
            
        default:
            print("Woah")
        }
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print(childViewControllers)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
