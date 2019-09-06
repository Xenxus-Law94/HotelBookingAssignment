//
//  NestedCollectionViewController.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class NestedCollectionViewController: UICollectionViewController {

    @IBOutlet weak var collectionViewHotel: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewHotel.delegate = self
        collectionViewHotel.dataSource = self
        
        collectionViewHotel.register(UINib(nibName: String(describing: CustomSection.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: CustomSection.self))
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }


}
