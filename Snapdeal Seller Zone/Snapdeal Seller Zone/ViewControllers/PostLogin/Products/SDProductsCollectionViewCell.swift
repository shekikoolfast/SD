//
//  SDProductsCollectionViewCell.swift
//  Snapdeal Seller Zone
//
//  Created by Abhishek Kumar on 03/08/15.
//  Copyright (c) 2015 Snapdeal. All rights reserved.
//

import UIKit

let Status = "productStatus"
let Name = "productName"
let CompetitivePrice = "productCompetitivePrice"
let SellingPrice = "SellingPrice"
let Quantity = "Quantity"
let SKU = "SKU"
let Attributes = "productAttributes"


class SDProductsCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var imgProductImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCompetitivePrice: UILabel!
    @IBOutlet weak var lblSellingPrice: UILabel!
    @IBOutlet weak var lblQuantity: UILabel!
    @IBOutlet weak var lblSKU: UILabel!
    @IBOutlet weak var lblAttributes: UILabel!
    
    func configureProductsData(#dictProduct: [String: AnyObject])
    {
        lblStatus.text = dictProduct[Status] as? String
        lblName.text = dictProduct[Name] as? String
        lblCompetitivePrice.text = dictProduct[CompetitivePrice] as? String
        lblSellingPrice.text = dictProduct[SellingPrice] as? String
        lblQuantity.text = (dictProduct[Quantity] as? NSNumber)?.stringValue
        lblSKU.text = dictProduct[SKU] as? String
        lblAttributes.text = dictProduct[Attributes] as? String
    }
}
