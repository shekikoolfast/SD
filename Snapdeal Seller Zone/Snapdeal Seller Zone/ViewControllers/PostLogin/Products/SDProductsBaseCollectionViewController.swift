//
//  SDProductsBaseCollectionViewController.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 03/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

let reuseIdentifier = "allProductsCell"

class SDProductsBaseCollectionViewController: UICollectionViewController {

    var arrDataSource = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource
}
