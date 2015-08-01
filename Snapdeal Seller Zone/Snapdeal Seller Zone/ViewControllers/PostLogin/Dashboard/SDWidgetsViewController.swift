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
    /*
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
    {
//        var headerCell = collectionView.dequeueReusableSupplementaryViewOfKind("Header", withReuseIdentifier: "HeaderView", forIndexPath: indexPath) as! UICollectionReusableView
        var headerCell = UICollectionReusableView(frame: CGRectMake(0, 0, 320, 30))
        headerCell.backgroundColor = UIColor.greenColor()

        return headerCell
    }
    
*/
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 15
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("WidgetCell", forIndexPath: indexPath) as! UICollectionViewCell
        cell.backgroundColor = UIColor.redColor()

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
        return CGSizeMake(CGRectGetWidth(self.view.frame), 30)
    }
}
