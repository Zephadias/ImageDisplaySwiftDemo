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
    
    var data: [ImageObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...190 {
            let imgObj = ImageObject(pImageUrl: "StartseiteGalerieEpisoden")
            data.append(imgObj)
        }
        
        resultsCollection = ResultsGridViewController()
        resultsCollection!.data = data
        
        resultsList = ResultsTableViewContoller()
        resultsList!.data = data
        
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
