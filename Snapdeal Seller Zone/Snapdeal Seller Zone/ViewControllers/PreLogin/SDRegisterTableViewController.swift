//
//  SDRegisterTableViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 30/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDRegisterTableViewController: UITableViewController
{
    var accessoryView: SDKeyboardAccessoryView? = nil
    
    @IBOutlet weak var tfCompanyName: UITextField!
    @IBOutlet weak var tfEmailID: UITextField!
    @IBOutlet weak var tfMobileNo: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfPinCode: UITextField!
    @IBOutlet weak var tfPrimaryCategory: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        var fields = [tfCompanyName, tfEmailID, tfMobileNo, tfPassword, tfPinCode, tfPrimaryCategory]
        accessoryView = SDKeyboardAccessoryView(fields: fields, delegate: self)
        
        NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardDidShowNotification, object: self, queue: NSOperationQueue.mainQueue()) { (info) -> Void in
            
            let object = info.object as! [String: AnyObject]
            let frame = (object[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
            print(frame)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBarHidden = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        var footerView = UIView(frame: CGRectMake(0, 0, CGRectGetWidth(tableView.bounds), 1))
        footerView.backgroundColor = UIColor.clearColor()
        return footerView
    }

    @IBAction func handleTapOnTypeOfProdcutSegment(sender: AnyObject) {
    }
    
    @IBAction func handleJoinNow(sender: AnyObject)
    {
        performSegueWithIdentifier("segueVerification", sender: nil)
    }
}

extension SDRegisterTableViewController: UITextFieldDelegate
{
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool
    {
        accessoryView!.activeField = textField
        textField.inputAccessoryView = accessoryView
        if textField == tfPrimaryCategory
        {
            var pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: 320, height: 216))
            pickerView.dataSource = self
            pickerView.delegate = self
            textField.inputView = pickerView
        }
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        return true
    }
}

extension SDRegisterTableViewController: AccessoryProtocol
{
    func buttonTapped()
    {
        
    }
}

extension SDRegisterTableViewController: UIPickerViewDataSource
{
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return 10
    }
}

extension SDRegisterTableViewController: UIPickerViewDelegate
{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!
    {
        return "Abhishek"
    }
}

extension Array
{
    func find(includedElement: T -> Bool) -> Int?
    {
        for (idx, element) in enumerate(self)
        {
            if includedElement(element)
            {
                return idx
            }
        }
        return nil
    }
}
