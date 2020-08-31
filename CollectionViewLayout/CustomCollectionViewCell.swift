//
//  CustomCollectionViewCell.swift
//  CustomCollectionView
//
//  Created by Nguyen Thi Huong on 8/31/20.
//  Copyright © 2020 Nguyen Thi Huong. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var opImageView: UIImageView!
    
    @IBOutlet weak var lblOP: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.borderWidth = 1
        lblOP.textAlignment = .center
    }

}
