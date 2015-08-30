//
//  StoryboardSelector.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/08/15.
//  Copyright © 2015 Snapdeal. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    class func HomeStoryboard() -> UIStoryboard {
        let storyHome = UIStoryboard(name: "SDHome", bundle: NSBundle.mainBundle())
        return storyHome
    }
    
    class func OrdersStoryboard() -> UIStoryboard {
        let storyHome = UIStoryboard(name: "SDOrders", bundle: NSBundle.mainBundle())
        return storyHome
    }
    
    class func CatalogsStoryboard() -> UIStoryboard {
        let storyCatalogs = UIStoryboard(name: "SDCatalogs", bundle: NSBundle.mainBundle())
        return storyCatalogs
    }
    
    class func PaymentsStoryboard() -> UIStoryboard {
        let storyPayments = UIStoryboard(name: "SDPayments", bundle: NSBundle.mainBundle())
        return storyPayments
    }
    
    class func ReturnsStoryboard() -> UIStoryboard {
        let storyReturns = UIStoryboard(name: "SDReturns", bundle: NSBundle.mainBundle())
        return storyReturns
    }
    
    class func PostLoginStoryboard() -> UIStoryboard {
        let storyPostLogin = UIStoryboard(name: "PostLogin", bundle: NSBundle.mainBundle())
        return storyPostLogin
    }
    
    class func PreLoginStoryboard() -> UIStoryboard {
        let storyPreLogin = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyPreLogin
    }
}