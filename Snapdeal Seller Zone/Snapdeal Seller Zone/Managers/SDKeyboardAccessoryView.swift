//
//  SDKeyboardAccessoryView.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 07/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

protocol AccessoryProtocol
{
    func buttonTapped()
}

class SDKeyboardAccessoryView: UIToolbar {
    
    var inputFields = [AnyObject]()
    var activeField: AnyObject? = nil
    weak var kbDelegate: AnyObject? = nil
    
    init(fields: [AnyObject]?, delegate: AnyObject)
    {
        super.init(frame: CGRect(x: 0, y: 0, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 44))
        kbDelegate = delegate
        createButtons()
        if let field =  fields
        {
            inputFields += field
        }
    }

    private func createButtons()
    {
        let btnPrev = UIBarButtonItem(barButtonSystemItem: .Rewind, target: self, action: "handleGotoPreviousResponder")
        let btnNext = UIBarButtonItem(barButtonSystemItem: .FastForward, target: self, action: "handleGotoNextResponder")
        let spacerView = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: self, action: nil)
        let btnDone = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "handleDone")
        self.items = [btnPrev, btnNext, spacerView,btnDone]
    }
    
    internal func handleGotoPreviousResponder()
    {
        
    }
    
    internal func handleGotoNextResponder()
    {
        
    }
    
    internal func handleDone()
    {
        let active = activeField as! UIResponder
        if active.isFirstResponder()
        {
            active.resignFirstResponder()
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
