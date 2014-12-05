//
//  ResultsCollectionViewCell.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/5/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit

class ResultsCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView?
    
    func setData(pImage:UIImage) {
        imageView = UIImageView(image: pImage)
        imageView!.contentMode = .ScaleAspectFit
        contentView.addSubview(imageView!)
    }
    
}
