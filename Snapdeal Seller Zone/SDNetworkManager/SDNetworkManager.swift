//
//  SDNetworkManager.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

public class SDNetworkManager: NSObject
{
    public class var sharedInstance :SDNetworkManager
    {
        struct Singleton
        {
            static let instance = SDNetworkManager()
        }
        return Singleton.instance
    }
    
    public func testMethod()
    {
        print("2")
    }
    
    
    
}
