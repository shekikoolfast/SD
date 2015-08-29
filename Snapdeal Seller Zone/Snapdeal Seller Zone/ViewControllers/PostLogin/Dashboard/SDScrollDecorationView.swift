//
//  SDScrollDecorationView.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 02/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDScrollDecorationView: UICollectionReusableView
{
    override init(frame: CGRect) {
        let view = UIView(frame: frame)
        view.backgroundColor = UIColor.orangeColor()
        super.init(frame: frame)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
