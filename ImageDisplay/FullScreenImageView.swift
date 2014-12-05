//
//  FullScreenImageView.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/5/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit

class FullScreenImageView: UIViewController
{
    var image:UIImageView?
    var imageUrl:UIImage?
    
    init(pImage:UIImage) {
        super.init(nibName: nil, bundle: nil)
        imageUrl = pImage
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tempImage:UIImage = Utils.sharedInstance.imageScaled(imageUrl!, maxWidth: self.view.frame.width)
        image = UIImageView(image: tempImage)
        
        image!.center = self.view.center
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(image!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
