//
//  SDAllProductsViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 03/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit
import SDNetworkManager

class SDAllProductsViewController: UICollectionViewController
{
    var dataSouceAllProducts = [[String: AnyObject]]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var v = SDNetworkManager()
        v.fetchAllProductsData { (arrAllProducts, isSuccessful) -> Void in
            if isSuccessful
            {
                if let arrProducts = arrAllProducts
                {
                    self.dataSouceAllProducts += arrProducts
                    self.collectionView?.reloadData()
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension SDAllProductsViewController: UICollectionViewDataSource
{
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSouceAllProducts.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("allProductsCell", forIndexPath: indexPath) as! SDProductsCollectionViewCell
        cell.contentView.backgroundColor = UIColor.whiteColor()
        cell.configureProductsData(dictProduct: dataSouceAllProducts[indexPath.row])
        return cell
    }
}

extension SDAllProductsViewController: UICollectionViewDelegate
{
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("segueProductDetail", sender: nil)
    }
}

extension SDAllProductsViewController: UICollectionViewDelegateFlowLayout
{
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return CGSizeMake(CGRectGetWidth(self.view.frame), 185)
    }
}
