//
//  SDDataManager.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 12/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit
import SDNetworkManager
import SDCoreDataManager


class SDDataManager: NSObject
{
    class var sharedInstance :SDDataManager
    {
        struct Singleton
        {
            static let instance = SDDataManager()
        }
        return Singleton.instance
    }
    
    func handleLogin(#email: String, password: String)
    {
        SDNetworkManager.sharedInstance.performLogin(email: email, password: password)
    }
}
