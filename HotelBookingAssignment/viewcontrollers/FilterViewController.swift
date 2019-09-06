//
//  FilterViewController.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    @IBOutlet weak var cardView2: CardView!
    @IBOutlet weak var cardView4: CardView!
    @IBOutlet weak var cardView5: CardView!
    @IBOutlet weak var cardView3: CardView!
    @IBOutlet weak var cardView1: CardView!
    @IBOutlet weak var cardViewNone: CardView!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var viewMap: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnSearch.layer.cornerRadius = 5
        viewMap.layer.cornerRadius = 5
        
        cardView1.layer.masksToBounds = true
        cardView2.layer.masksToBounds = true
        cardView3.layer.masksToBounds = true
        cardView4.layer.masksToBounds = true
        cardView5.layer.masksToBounds = true
        cardViewNone.layer.masksToBounds = true
        cardView1.layer.cornerRadius = 5
        cardView2.layer.cornerRadius = 5
        cardView3.layer.cornerRadius = 5
        cardView4.layer.cornerRadius = 5
        cardView5.layer.cornerRadius = 5
        cardViewNone.layer.cornerRadius = 5
        
        
        
        // Do any additional setup after loading the view.
    }
    
    static func callFilter() -> FilterViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: FilterViewController.self)) as! FilterViewController
    }
    


}
