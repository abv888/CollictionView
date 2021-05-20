//
//  MyCollectionViewCell.swift
//  Task_10
//
//  Created by  Bagrat Arutyunov on 11.11.2020.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewBS: UIImageView!
    
    
    
    
    @IBOutlet weak var oldPriceLabel: UILabel!
    
    
    
    @IBOutlet weak var newPriceLabel: UILabel!
    
    
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    @IBOutlet weak var saleLabel: UILabel!
    
    
    
   
    var shopMenu: BSShop?{
        didSet{
            nameLabel.text = shopMenu?.productName
            oldPriceLabel.text = shopMenu?.oldPrice
            oldPriceLabel.attributedText = oldPriceLabel.text?.strikeThrough()
            newPriceLabel.text = shopMenu?.newPrice
            saleLabel.text = shopMenu?.amountOfSale
            
            if let image = shopMenu?.imageName{
                imageViewBS.image = UIImage(named: image)
                imageViewBS.contentMode = .scaleAspectFill
            }
        }
    }
    
    
   
    
    
    
    
    
    
    
}



