//
//  CustomSection.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class CustomSection: UICollectionReusableView {
    
    @IBOutlet weak var lblCard: UILabel!
    var mData: String! = ""{
        didSet {
            lblCard.text = mData
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
