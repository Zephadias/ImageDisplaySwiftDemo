//
//  Utils.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/5/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit


private let _singletonInstance = Utils()
class Utils {
    class var sharedInstance: Utils {
        return _singletonInstance
    }
    
    func imageScaled(pImage:UIImage, maxWidth:CGFloat) -> UIImage {
        let oldWidth:CGFloat = pImage.size.width
        let oldHeight:CGFloat = pImage.size.height
        
        let scale:CGFloat = maxWidth / oldWidth
        
        let newWidth:CGFloat = oldWidth * scale
        let newHeight:CGFloat = oldHeight * scale
        
        UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight))
        pImage.drawInRect(CGRectMake(0, 0, newWidth, newHeight))
        var image:UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
    func imageScaled(pImage:UIImage, maxHeight:CGFloat) -> UIImage {
        
        return pImage
    }
}
