//
//  ResultsTableViewController.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/4/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit

class ResultsTableViewContoller: UITableViewController, UITableViewDataSource, UITableViewDelegate
{
    
    let cellIdentifier = "Cell"
    
    var data: [ImageObject] = []
    
    override init() {
        super.init(nibName:nil, bundle:nil)
        self.title = "List View"
        let listImage = UIImage(named: "ListIcon")
        self.tabBarItem.image = listImage
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as UITableViewCell!
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellIdentifier)
            cell.textLabel.textColor = UIColor.blackColor()
        }
        cell.textLabel.text = "Item List Id: \(indexPath.row)"
        cell.imageView.image = data[indexPath.item].imageUrl
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let imageView = FullScreenImageView(pImage: data[indexPath.item].imageUrl!)
        self.navigationController!.pushViewController(imageView, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
