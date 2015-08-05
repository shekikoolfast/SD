//
//  SDNetworkManager.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

public typealias CompletionHandler = (data:[[String: AnyObject]]?, isSuccessful: Bool) -> Void

let baseURL = NSURL(string: "http://www.json-generator.com/api/json/get/")

public class SDNetworkManager: NSObject
{
    
//    var block = CompletionHandler?()
    
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
    
    public func performLogin(#email: String, password: String)
    {
        
    }
    
    public func fetchDashboardData(#completionHandler: CompletionHandler)
    {
        /*
         * Get the application configuration from the specified URL.
         * Parse the information, save the data to the SDUserDefaults.
         * Get the list of widgets whose infomation needs to be displayed.
         * Create and array of DataSource and return to the contorller on the main thread.
         */
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            completionHandler(data: nil, isSuccessful: false)
        })
    }
    
    public func fetchAllProductsData(#completionHandler: CompletionHandler)
    {
        var url = NSURL(string: "ccOficoHNe", relativeToURL: baseURL)
        var session: Void = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, urlResponse, error) -> Void in
            if let err = error
            {
                println("Parsing Error")
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completionHandler(data: nil, isSuccessful: false)
                })
            }
            else
            {
                var error = NSErrorPointer()
                var json = NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments, error: error) as! [[String: AnyObject]]
                println( "toString(myvar0.dynamicType) -> \(json.dynamicType)")
                println(error)
                println(json)
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completionHandler(data: json, isSuccessful: true)
                })
            }
        }).resume()
    }
}
