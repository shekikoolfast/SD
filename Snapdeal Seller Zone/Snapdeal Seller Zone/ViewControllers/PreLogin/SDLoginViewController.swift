//
//  SDLoginViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit
import SDNetworkManager
import SDCoreDataManager

class SDLoginViewController: UIViewController, UITextFieldDelegate
{
    //MARK:
    //MARK: IBOutlets Properties
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    weak var tfEmailID: UITextField?
    weak var okAction1: UIAlertAction?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var v = SDNetworkManager()
        v.testMethod()
        
        var v1 = SDNetworkManager.sharedInstance
        v1.testMethod()
        
        // Do any additional setup after loading the view.
        navigationController?.navigationBarHidden = true
        
        var btnForgotPassword = UIButton(frame: CGRectMake(0, 0, 50, 30))
        btnForgotPassword.setTitle("Forgot?", forState: .Normal)
        btnForgotPassword .setTitleColor(UIColor.blackColor(), forState: .Normal)
        btnForgotPassword.titleLabel?.font = UIFont.systemFontOfSize(10)
        btnForgotPassword.addTarget(self, action: "handleForgotPassword:", forControlEvents: .TouchUpInside)
        tfPassword.rightViewMode = .Always
        tfPassword.rightView = btnForgotPassword
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:
    //MARK: IBAction Methods
    
    func handleForgotPassword(sender: UIButton)
    {
        var alertController = UIAlertController(title: "Forgot Password?", message: "Please enter your Email ID to help you recover your password.", preferredStyle: .Alert)
        alertController.addTextFieldWithConfigurationHandler { (tfEmail) -> Void in
            
            self.tfEmailID = tfEmail
            tfEmail.keyboardType = .EmailAddress
            tfEmail.returnKeyType = .Send
            tfEmail.placeholder = "Enter your Email ID here"
            tfEmail.delegate = self
        }
        var okAction = UIAlertAction(title: "OK", style: .Default) { (action) -> Void in
            alertController.dismissViewControllerAnimated(true, completion: nil)
        }
        okAction.enabled = false
        okAction1 = okAction
        var cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            alertController.dismissViewControllerAnimated(true, completion: nil)
        }
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func handleTapOnRegister(sender: UIButton)
    {
        performSegueWithIdentifier("SGRegistration", sender: nil)
    }
    
    @IBAction func handleTapOnLogin(sender: UIButton)
    {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var controller = segue.destinationViewController as! UIViewController
        controller.navigationController?.navigationBar
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        view.endEditing(true)
    }
}

extension SDLoginViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        if textField == self.tfEmailID
        {
            if let isTextAvailable = self.tfEmailID?.hasText()
            {
                return true
            }
            return false
        }
        return true
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if textField == self.tfEmailID
        {
            var isEmailValid = isValidEmail(testStr: textField.text)
            okAction1?.enabled = isEmailValid
        }
        return true
        
    }
    
    func isValidEmail(#testStr:String) -> Bool
    {
        // println("validate calendar: \(testStr)")
        let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(testStr)
    }
}
