//
//  SDSellProductsViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 02/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDSellProductsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        var header = collectionView.collectionViewLayout
        //header.registerClass(SDScrollDecorationView.self, forDecorationViewOfKind: "FloorPlan")
        
        // Do any additional setup after loading the view.
        navigationController?.hidesBarsOnSwipe = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension SDSellProductsViewController: UICollectionViewDataSource
{
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
//    {
//        return 5
//    }
//    
//    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
//    {
//        if kind == UICollectionElementKindSectionHeader
//        {
//            let headerCell = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "HeaderView", forIndexPath: indexPath) as! UICollectionReusableView
//            headerCell.backgroundColor = UIColor.greenColor()
//            return headerCell
//        }
//        return UICollectionReusableView()
//    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("SellCell", forIndexPath: indexPath) as! UICollectionViewCell
        cell.backgroundColor = UIColor.whiteColor()
        
        return cell
    }
}

extension SDSellProductsViewController: UICollectionViewDelegate
{
    
}

extension SDSellProductsViewController: UICollectionViewDelegateFlowLayout
{
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return CGSizeMake(CGRectGetWidth(self.view.frame), 150)
    }
}

