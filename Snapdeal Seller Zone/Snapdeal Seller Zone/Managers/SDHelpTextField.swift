//
//  SDHelpTextField.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 12/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

@objc protocol SDHelpTextFieldDelegate
{
    optional func buttonTappedOn(button: UIButton)
}

class SDHelpTextField: UITextField
{
    var helpDelegate: AnyObject? = nil
    var helpView: Bool? {
        didSet{
            let btnHelp = UIButton(type: .Custom)
            btnHelp.tintColor = UIColor.blackColor()
            btnHelp.tag = self.tag
            btnHelp.addTarget(self, action: "handleTapOnHelpText:", forControlEvents: .TouchUpInside)
            self.rightView = btnHelp
            self.rightViewMode = .Always
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        helpView = true
    }
    
    internal func handleTapOnHelpText(button: UIButton)
    {
        self.helpDelegate?.buttonTappedOn!(button)
    }
}

