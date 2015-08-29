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
    
    private var networkManagerQueue: NSOperationQueue? = nil
//    var block = CompletionHandler?()
    public class var sharedInstance :SDNetworkManager
    {
        struct Singleton
        {
            static let instance = SDNetworkManager()
        }
        return Singleton.instance
    }
    
    override init() {
        networkManagerQueue = NSOperationQueue()
    }
    
    public func testMethod()
    {
        
    }
    
    public func performLogin(email email: String, password: String)
    {
        let opLogin = SDLoginOperation()
        networkManagerQueue?.addOperation(opLogin)
        opLogin.completionBlock = { () -> Void in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
            })
        }
    }
    
    public func fetchDashboardData(completionHandler completionHandler: CompletionHandler)
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
    
    func fetchApplicationConfiguration(completionHandler completionHandler: CompletionHandler)
    {
        
    }
    
    func fetchAvailableWidgetConfiguration(completionHandler completionHandler: CompletionHandler)
    {
        
    }
    
    public func fetchAllProductsData(completionHandler completionHandler: CompletionHandler)
    {
        _ = NSURL(string: "ccOficoHNe", relativeToURL: baseURL)
//        let session = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, urlResponse, error) -> Void in
//            if let _ = error
//            {
//                print("Parsing Error")
//                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                    completionHandler(data: nil, isSuccessful: false)
//                })
//            }
//            else
//            {
//                let error = NSErrorPointer()
//                let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as! [[String: AnyObject]]
//                print( "toString(myvar0.dynamicType) -> \(json.dynamicType)")
//                print(error)
//                print(json)
//                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                    completionHandler(data: json, isSuccessful: true)
//                })
//            }
//        })
//        session!.resume()
    }
}
