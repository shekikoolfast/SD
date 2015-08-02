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
    /*- (UICollectionViewLayoutAttributes *)layoutAttributesForDecorationViewOfKind:(NSString *)decorationViewKind atIndexPath:(NSIndexPath *)indexPath
    {
    UICollectionViewLayoutAttributes *layoutAttributes = [UICollectionViewLayoutAttributes layoutAttributesForDecorationViewOfKind:decorationViewKind withIndexPath:indexPath];
    layoutAttributes.frame = CGRectMake(0.0, 0.0, self.collectionViewContentSize.width, self.collectionViewContentSize.height);
    layoutAttributes.zIndex = -1;
    return layoutAttributes;
    }
    
    - (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
    {
    NSMutableArray *allAttributes = [[NSMutableArray alloc] initWithCapacity:4];
    
    [allAttributes addObject:[self layoutAttributesForDecorationViewOfKind:@"FloorPlan" atIndexPath:[NSIndexPath indexPathForItem:0 inSection:0]]];
    
    for (NSInteger i = 0; i < [self.collectionView numberOfItemsInSection:0]; i++)
    {
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:i inSection:0];
    UICollectionViewLayoutAttributes *layoutAttributes = [self layoutAttributesForItemAtIndexPath:indexPath];
    [allAttributes addObject:layoutAttributes];
    }
    return allAttributes;
    }
*/
    
    override func layoutAttributesForDecorationViewOfKind(elementKind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes! {
        var layoutAttributes = UICollectionViewLayoutAttributes(forDecorationViewOfKind: elementKind, withIndexPath: indexPath)
        layoutAttributes.frame = CGRect(x: 0, y: 0, width: 320, height: 50)
        layoutAttributes.zIndex = -1
        return layoutAttributes
    }
    
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [AnyObject]? {
//        var 
        return nil
    }
}
