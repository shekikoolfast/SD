//
//  SDLogin.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 12/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDLogin: SDBaseModel
{
    var isAuthenticated = false
    var strSellerCode: String? = nil
    var isAuthorized = false
    var strFailureReason: String? = nil
    
    var arrPrivilages = [String]()
    
    override init(json: AnyObject)
    {
        super.init(json: json)
    }
    
}
