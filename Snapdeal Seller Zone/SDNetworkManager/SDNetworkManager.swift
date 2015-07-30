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
    static let sharedInstance: SDNetworkManager = {
        let instance = SDNetworkManager()
        return instance
    }()
}
