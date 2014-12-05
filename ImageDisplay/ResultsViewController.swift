//
//  ResultsViewController.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/4/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit

class ResultsViewController:UITabBarController, UITabBarControllerDelegate
{
    var resultsCollection: ResultsGridViewController?
    var resultsList: ResultsTableViewContoller?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultsCollection = ResultsGridViewController()
        
        resultsList = ResultsTableViewContoller()
        
        let viewControllers = [resultsList!, resultsCollection!]
        
        self.delegate = self
        self.selectedIndex = 0
        
        self.viewControllers = viewControllers
        
        
        view.backgroundColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
