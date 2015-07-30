//
//  SDLoginViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDLoginViewController: UIViewController
{
    //MARK:
    //MARK: IBOutlets Properties
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        var alertController = UIAlertController(title: "Forgot Password?", message: "Please enter your Email ID.", preferredStyle: .Alert)
        alertController.addTextFieldWithConfigurationHandler { (tfEmail) -> Void in
            
            
        }
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
