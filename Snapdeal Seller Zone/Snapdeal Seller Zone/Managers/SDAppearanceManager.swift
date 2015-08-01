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
        UILabel.appearance().font = UIFont.systemFontOfSize(15)
        var backButtonImage = UIImage(named: "")
        UIBarButtonItem.appearance().setBackButtonBackgroundImage(backButtonImage, forState: .Normal, barMetrics: .Default)
//        UINavigationBar.appearance().backIndicatorImage
        UICollectionView.appearance().backgroundColor = UIColor.groupTableViewBackgroundColor()
        UITableView.appearance().backgroundColor = UIColor.groupTableViewBackgroundColor()
    }
    
    class func showNoInternet() -> UILabel?
    {
        var lblNoInternet = UILabel(frame: UIScreen.mainScreen().bounds)
        var attrs = [NSFontAttributeName : UIFont.systemFontOfSize(19.0), NSTextEffectAttributeName: NSTextEffectLetterpressStyle]
        var string = NSMutableAttributedString(string: "Cannot Connect to Snapdeal", attributes: attrs)
        lblNoInternet.attributedText = string
        return lblNoInternet
//        string.attribu
//        lblNoInternet.
    }
}
