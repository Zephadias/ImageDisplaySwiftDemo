//
//  ImageObject.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/5/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit

class ImageObject {
    
    let imageUrl: UIImage!
    
    init(pImageUrl: String) {
        imageUrl = UIImage(named: pImageUrl)
    }
}
