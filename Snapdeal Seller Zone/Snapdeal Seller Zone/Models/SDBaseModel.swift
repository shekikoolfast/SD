//
//  SDBaseModel.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 12/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDBaseModel: NSObject
{
    var isSuccessful = false
    var strErrorCode: String? = nil
    var strErrorMsg: String? = nil
    var payload: AnyObject? = nil
    
    init(json: AnyObject)
    {
        isSuccessful = true
        strErrorCode = "errorCode"
        strErrorMsg = "errorMsg"
        super.init()
    }
    
}
