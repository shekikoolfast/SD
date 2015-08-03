//
//  SDSectionHeader.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 01/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

class SDSectionHeader: UICollectionViewFlowLayout
{
    override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
        // Return true so we're asked for layout attributes as the content is scrolled
        return true
    }
    
    override func layoutAttributesForDecorationViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes!
    {
        var layoutAttributes = UICollectionViewLayoutAttributes(forDecorationViewOfKind: elementKind, withIndexPath: indexPath)
        layoutAttributes.frame = CGRect(x: 0, y: 0, width: 320, height: 50)
        layoutAttributes.zIndex = -1
        return layoutAttributes
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [AnyObject]?
    {
        //super.layoutAttributesForElementsInRect(rect) as? [UICollectionViewLayoutAttributes]
        var array = [UICollectionViewLayoutAttributes]()
        var indexPath = NSIndexPath(forItem: 0, inSection: 0)
        array.append(self.layoutAttributesForDecorationViewOfKind("FloorPlan", atIndexPath: indexPath))
        
        for (index, layoutAttributes) in enumerate(array)
        {
            var indexPath = NSIndexPath(forItem: index, inSection: 0)
            var attr = layoutAttributesForItemAtIndexPath(indexPath)
            array.append(attr)
        }
        return array
    }
}
