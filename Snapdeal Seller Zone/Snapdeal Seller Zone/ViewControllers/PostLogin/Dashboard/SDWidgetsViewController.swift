//
//  SDWidgetsViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 31/07/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDWidgetsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: "handlePullToRefresh:", forControlEvents: .ValueChanged)
        collectionView.addSubview(refreshControl)
        
        var layout = collectionView.collectionViewLayout
        println(layout)
        layout.registerClass(SDScrollDecorationView.self, forDecorationViewOfKind: "FloorPlan")
        createBarButtons()
    }

    private func createBarButtons()
    {
        var btnNotification = UIBarButtonItem(barButtonSystemItem: .Play, target: self, action: "handleTapOnNotification")
        var btnNotif = UIBarButtonItem(barButtonSystemItem: .Pause, target: self, action: "handleTapOnNotification")
        self.navigationItem.rightBarButtonItems = [btnNotification, btnNotif]
        
    }
    
    func handleTapOnNotification()
    {
        var tabBarController = parentViewController?.parentViewController as! SDTabBarController
        tabBarController.selectedIndex = 4
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        var lbl = SDAppearanceManager.showNoInternet()
//        self.view.addSubview(lbl!)
//        self.view.bringSubviewToFront(lbl!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handlePullToRefresh(sender: UIRefreshControl)
    {
        sleep(2)
        sender.endRefreshing()
    }

}


extension SDWidgetsViewController: UICollectionViewDataSource
{
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
    {
        if kind == UICollectionElementKindSectionHeader
        {
            let headerCell = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "HeaderView", forIndexPath: indexPath) as! UICollectionReusableView
            headerCell.backgroundColor = UIColor.grayColor()
            return headerCell
        }
        return UICollectionReusableView()
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("WidgetCell", forIndexPath: indexPath) as! UICollectionViewCell
        cell.backgroundColor = UIColor.whiteColor()

        return cell
    }
}

extension SDWidgetsViewController: UICollectionViewDelegate
{
    
}


extension SDWidgetsViewController: UICollectionViewDelegateFlowLayout
{
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return CGSizeMake(CGRectGetWidth(self.view.frame), 50)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSizeMake(CGRectGetWidth(self.view.frame), 50)
    }
}
