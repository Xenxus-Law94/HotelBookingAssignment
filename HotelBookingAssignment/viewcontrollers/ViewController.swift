//
//  ViewController.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/3/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivText: UIImageView!
    @IBOutlet weak var ivLocation: UIImageView!
    @IBOutlet weak var ivNear: UIImageView!
    @IBOutlet weak var ivItachi: UIImageView!
    @IBOutlet weak var tbViewHotel: UITableView!
    
    var mLocList: [LocationsVO] = LocationsVO.getAllResorts()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ivItachi.layer.cornerRadius = ivItachi.frame.height / 2
            
        ivText.layer.cornerRadius = ivText.frame.height / 2
        ivText.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ivLocation.tintColor = #colorLiteral(red: 0.6139937639, green: 0.2150158286, blue: 1, alpha: 1)
        ivNear.tintColor = #colorLiteral(red: 0.6139937639, green: 0.2150158286, blue: 1, alpha: 1)
        tbViewHotel.delegate =  self
        tbViewHotel.dataSource = self
        tbViewHotel.registerForCell(strID: String(describing: LocationsTableViewCell.self))
    }


}

extension ViewController : UITableViewDelegate {

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mLocList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: LocationsTableViewCell.self), for: indexPath) as! LocationsTableViewCell
        cell.locData = mLocList[indexPath.row]
        return cell
    }
    
    
}


