//
//  SDTabBarController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 31/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDTabBarController: UITabBarController {

    var isNotificationArrived = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        delegate = self
        
        let storyHome = UIStoryboard.HomeStoryboard()
        let storyOrders = UIStoryboard.OrdersStoryboard()
//        let storyCatalog = UIStoryboard.CatalogsStoryboard()
//        let storyPayments = UIStoryboard.PaymentsStoryboard()
//        let storyReturns = UIStoryboard.ReturnsStoryboard()
        
        let homeVC = storyHome.instantiateInitialViewController()
        let ordersVC = storyOrders.instantiateInitialViewController()
        viewControllers = [homeVC!, ordersVC!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension SDTabBarController: UITabBarControllerDelegate
{
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        return true
    }
    
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        
    }
}
