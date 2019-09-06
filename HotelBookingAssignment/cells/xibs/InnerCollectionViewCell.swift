//
//  InnerCollectionViewCell.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class InnerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ivBagan: UIImageView!
    @IBOutlet weak var lblInnerprice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
            ivBagan.layer.cornerRadius = 5
        lblInnerprice.layer.masksToBounds = true
        lblInnerprice.layer.cornerRadius = 5
    }

}
