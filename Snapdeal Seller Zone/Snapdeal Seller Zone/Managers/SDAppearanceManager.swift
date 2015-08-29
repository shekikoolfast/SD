//
//  SDAppearanceManager.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDAppearanceManager: NSObject
{
    class func setupAppearance()
    {
//        UILabel.appearance().font = UIFont.systemFontOfSize(15)
        let backButtonImage = UIImage(named: "")
        UIBarButtonItem.appearance().setBackButtonBackgroundImage(backButtonImage, forState: .Normal, barMetrics: .Default)
        
        
//        UINavigationBar.appearance().backIndicatorImage
        UICollectionView.appearance().backgroundColor = UIColor.groupTableViewBackgroundColor()
        UITableView.appearance().backgroundColor = UIColor.groupTableViewBackgroundColor()
        UINavigationBar.appearance().tintColor = UIColor.blackColor()
        UINavigationBar.appearance().barTintColor = UIColor.cyanColor()
        UITabBar.appearance().tintColor = UIColor.brownColor()
        UITabBar.appearance().barTintColor = UIColor.purpleColor()
        UISearchBar.appearance().barTintColor = UIColor.whiteColor()
        UISearchBar.appearance().tintColor = UIColor.grayColor()
    }
    
    class func showNoInternet() -> UILabel?
    {
        let lblNoInternet = UILabel(frame: UIScreen.mainScreen().bounds)
        lblNoInternet.backgroundColor = UIColor.groupTableViewBackgroundColor()
        lblNoInternet.numberOfLines = 0
        let attrs = [NSFontAttributeName : UIFont.systemFontOfSize(30.0), NSTextEffectAttributeName: NSTextEffectLetterpressStyle]
        lblNoInternet.textAlignment = .Center
        let string = NSMutableAttributedString(string: "Cannot Connect to Snapdeal network.", attributes: attrs)
        lblNoInternet.attributedText = string
        return lblNoInternet
//        string.attribu
//        lblNoInternet.
    }
}
