//
//  LocationsTableViewCell.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/4/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit
import SDWebImage

class LocationsTableViewCell: UITableViewCell {
    @IBOutlet weak var ivMain: UIImageView!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblDiscount: UILabel!
    @IBOutlet weak var ivRating: UIImageView!
    
    var locData: LocationsVO! {
        didSet {
            lblName.text = locData.locName
            ivMain.sd_setImage(with: URL(string: locData.locImg), completed: nil)
            lblRating.text = locData.locRating
            lblPrice.text = locData.locPrice
            lblDiscount.text = locData.locDiscount
            lblLocation.text = locData.locLocated
            ivMain.layer.cornerRadius = 5
            ivRating.tintColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            lblPrice.layer.masksToBounds = true
            lblPrice.layer.cornerRadius = 5
        }
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
