//
//  ResultsGridViewController.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/5/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit

class ResultsGridViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource  {
    
    var collectionView: UICollectionView?
    
    var data: [ImageObject] = []
    
    override init() {
        super.init(nibName:nil, bundle:nil)
        self.title = "Grid View"
        let gridImage = UIImage(named: "GridIcon")
        self.tabBarItem.image = gridImage
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 1
        let cellWidth:CGFloat = (self.view.frame.width - 3) / 4
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView!.delegate = self
        collectionView!.dataSource = self
        collectionView!.backgroundColor = UIColor.lightGrayColor()
        collectionView!.registerClass(ResultsCollectionViewCell.self, forCellWithReuseIdentifier: "ResultsCollectionViewCell")
        self.view.addSubview(collectionView!)
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:ResultsCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("ResultsCollectionViewCell", forIndexPath: indexPath) as ResultsCollectionViewCell
        cell.backgroundColor = UIColor.blackColor()
        let tempImage:UIImage = Utils.sharedInstance.imageScaled(data[indexPath.item].imageUrl!, maxWidth: self.view.frame.width/4)
        cell.setData(tempImage)
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let imageView = FullScreenImageView(pImage: data[indexPath.item].imageUrl!)
        self.navigationController!.pushViewController(imageView, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
