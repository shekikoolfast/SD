//
//  SDLoginOperation.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 12/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDLoginOperation: NSOperation
{
    override func main()
    {
        print("Creating the login Operation", terminator: "")
        let url = NSURL(string: "http://www.json-generator.com/api/json/get/ccOficoHNe")
        let opFetch = SDFetchDataOperation(url: url!)
        let opParse = SDParseDataOperation()
        let opFinal = NSBlockOperation()
        
        opFetch.addDependency(self)
        opParse.addDependency(opFetch)
        opFinal.addDependency(opFinal)

        self.completionBlock = { () -> Void in

        }
        
        opFetch.completionBlock = { () -> Void in
            opParse.strTemp = opFetch.vdata
        }
        
        opParse.completionBlock = { () -> Void in
        }
        
        opFinal.completionBlock = { () -> Void in
            
        }
    }
}
