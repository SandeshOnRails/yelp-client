//
//  BusinessCell.swift
//  Yelp
//
//  Created by Sandesh Basnet on 9/16/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var businessName: UILabel!
    
    @IBOutlet weak var thumbView: UIImageView!
    
    
    @IBOutlet weak var ratingView: UIImageView!
    
    
    @IBOutlet weak var addressView: UILabel!
    
    @IBOutlet weak var reviewLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business: Business! {
        didSet {
           businessName.text = business.name
            thumbView.setImageWith(business.imageURL!)
            categoriesLabel.text = business.categories
            addressView.text = business.address
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            
            ratingView.image = business.ratingImage
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thumbView.layer.cornerRadius = 3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
