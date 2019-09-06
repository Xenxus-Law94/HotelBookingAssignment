//
//  OuterCollectionViewCell.swift
//  HotelBookingAssignment
//
//  Created by tunlukhant on 9/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class OuterCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var innerCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        innerCollectionView.delegate = self
        
        innerCollectionView.dataSource = self
        
        innerCollectionView.register(UINib(nibName: String(describing: InnerCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: InnerCollectionViewCell.self))
        
        let layout = innerCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width:((innerCollectionView.frame.width - 20) / 1.4), height: 200)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 0
    }

}

extension OuterCollectionViewCell: UICollectionViewDelegate {
    
}

extension OuterCollectionViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: InnerCollectionViewCell.self), for: indexPath)as! InnerCollectionViewCell
        return item
    }
    
    
}
