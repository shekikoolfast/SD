//
//  SDLoginViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDLoginViewController: UIViewController, UITextFieldDelegate
{
    //MARK:
    //MARK: IBOutlets Properties
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField! {
        didSet {
            tfPassword.rightView = configurePasswordRightView(tfPassword)
            tfPassword.rightViewMode = .Always
        }
    }
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    weak var tfEmailID: UITextField?
    weak var okAction1: UIAlertAction?
    
    var isShowingPasswordText = false {
        didSet {
            tfPassword.secureTextEntry = !isShowingPasswordText
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        navigationController?.navigationBarHidden = true

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textInPasswordDidChange:", name: UITextFieldTextDidChangeNotification, object: tfPassword)
    }
    
    func configurePasswordRightView(tfPasswd: UITextField) -> UIButton {
        let btnRightView = UIButton(frame: CGRectMake(0, 0, 50, 30))
        btnRightView .setTitleColor(UIColor.blackColor(), forState: .Normal)
        btnRightView.titleLabel?.font = UIFont.systemFontOfSize(10)
        
        if tfPasswd.hasText() {
            btnRightView.setTitle("Display", forState: .Normal)
            btnRightView.addTarget(self, action: "handleShowPassword:", forControlEvents: .TouchUpInside)
        } else {
            btnRightView.setTitle("Forgot?", forState: .Normal)
            btnRightView.addTarget(self, action: "handleForgotPassword:", forControlEvents: .TouchUpInside)
        }
        return btnRightView
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UITextFieldTextDidChangeNotification, object: tfPassword)
    }
    
    func textInPasswordDidChange(notification: NSNotification) {
        let textField = notification.object as! UITextField
        textField.rightView = configurePasswordRightView(textField)
        textField.rightViewMode = .Always
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:
    //MARK: IBAction Methods
    
    func handleShowPassword(sender: UIButton) {
        isShowingPasswordText = !isShowingPasswordText
    }
    
    func handleForgotPassword(sender: UIButton)
    {
        let alertController = UIAlertController(title: "Forgot Password?", message: "Please enter your Email ID to help you recover your password.", preferredStyle: .Alert)
        alertController.addTextFieldWithConfigurationHandler { (tfEmail) -> Void in
            
            self.tfEmailID = tfEmail
            tfEmail.keyboardType = .EmailAddress
            tfEmail.returnKeyType = .Send
            tfEmail.placeholder = "Enter your Email ID here"
            tfEmail.delegate = self
        }
        let okAction = UIAlertAction(title: "OK", style: .Default) { (action) -> Void in
            alertController.dismissViewControllerAnimated(true, completion: nil)
        }
        okAction.enabled = false
        okAction1 = okAction
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
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
        SDDataManager.sharedInstance.handleLogin(email: "abhishek", password: "kumar")
        
        let storybord = UIStoryboard(name: "PostLogin", bundle: NSBundle.mainBundle())
        let tabbarController = storybord.instantiateInitialViewController() as! SDTabBarController
        navigationController?.setViewControllers([tabbarController], animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        _ = segue.destinationViewController
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        view.endEditing(true)
    }
}

//MARK:
//MARK: UITextFieldDelegate Methods
extension SDLoginViewController
{
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        if textField == self.tfEmailID
        {
            if let _ = self.tfEmailID?.hasText()
            {
                return true
            }
            return false
        }
        return true
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        if textField == self.tfEmailID
        {
            let isEmailValid = isValidEmail(testStr: textField.text!)
            okAction1?.enabled = isEmailValid
        }
        return true
    }
    
    func isValidEmail(testStr testStr:String) -> Bool
    {
        // println("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(testStr)
    }
}
