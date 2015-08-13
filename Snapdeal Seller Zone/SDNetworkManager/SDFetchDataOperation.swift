//
//  SDFetchDataOperation.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 12/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import Foundation

private var URLSessionTaksOperationKVOContext = 0

class SDFetchDataOperation: NSOperation
{
    let url: NSURL?

    init(url: NSURL)
    {
        self.url = url
//        self.qualityOfService = .UserInitiated
        super.init()
    }
    
    override func observeValueForKeyPath(keyPath: String, ofObject object: AnyObject, change: [NSObject : AnyObject], context: UnsafeMutablePointer<Void>) {
        
    }
    
    override func main() {
        
    }
    
    
    
}
