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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
