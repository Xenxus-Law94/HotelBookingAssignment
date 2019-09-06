//
//  NestedViewController.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit
import FittedSheets

class NestedViewController: UIViewController {

    @IBOutlet weak var collectionViewHotel: UICollectionView!
    
    @IBOutlet weak var ivFilter: UIImageView!
    @IBOutlet weak var viewMap: UIView!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var viewFilter: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        viewFilter.layer.cornerRadius = 5
        ivFilter.tintColor = #colorLiteral(red: 0.6139937639, green: 0.2150158286, blue: 1, alpha: 1)
       viewMap.layer.cornerRadius = 5
        
        btnSearch.layer.cornerRadius = 5
        collectionViewHotel.delegate = self
        collectionViewHotel.dataSource = self
        
        let layout = collectionViewHotel.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 8
        layout.itemSize = CGSize(width: (self.view.frame.width), height: 210)
        
        collectionViewHotel.register(UINib(nibName: String(describing: OuterCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: OuterCollectionViewCell.self))
    collectionViewHotel.register(UINib(nibName: String(describing: CustomSection.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: CustomSection.self))
        
        let gesture = UITapGestureRecognizer(target: self, action:#selector (filter (_:)))
        
        viewFilter.addGestureRecognizer(gesture)
    }
    

    @objc func filter(_ sender:UITapGestureRecognizer) {
        let controller = FilterViewController.callFilter()
        let sheetController = SheetViewController(controller: controller, sizes: [.fixed(self.view.frame.height*3/4), .fullScreen])
        
        // Adjust how the bottom safe area is handled on iPhone X screens
        sheetController.blurBottomSafeArea = true
    sheetController.adjustForBottomSafeArea = true
       
        // Extend the background behind the pull bar instead of having it transparentsheetController.extendBackgroundBehindHandle = true
        
        sheetController.handleColor = UIColor.darkText
        
        //Turn off rounded corners
        sheetController.topCornersRadius = 0
        
        //Make corners more round
        sheetController.topCornersRadius = 15
        
        // Disable the dismiss on background tap functionality
        sheetController.dismissOnBackgroundTap = true
        
        self.present(sheetController, animated: true, completion: nil)
    }

}



extension NestedViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewHotel.dequeueReusableCell(withReuseIdentifier: String(describing: OuterCollectionViewCell.self), for: indexPath) as! OuterCollectionViewCell
        return cell
    }


}

extension NestedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: CustomSection.self), for: indexPath) as! CustomSection
        let category = indexPath.section == 0 ? "TOP SEARCHES" : "RECENT SEARCHES"
        sectionHeaderView.mData = category
        return sectionHeaderView
    }
}
