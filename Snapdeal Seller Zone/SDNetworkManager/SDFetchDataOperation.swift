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

    var vdata: String? = nil
    init(url: NSURL)
    {
        self.url = url
        
//        self.qualityOfService = .UserInitiated
        super.init()
    }
    
    
    override func main()
    {
        print("Start getting the data")
        NSURLSession.sharedSession().dataTaskWithURL(self.url!, completionHandler: { (data, urlResponse, error) -> Void in
            print(urlResponse)
            self.vdata = error!.localizedDescription
        }).resume()
    }
    
    
    
}
