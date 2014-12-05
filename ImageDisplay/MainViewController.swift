//
//  ViewController.swift
//  ImageDisplay
//
//  Created by Ryan Ploetz on 12/4/14.
//  Copyright (c) 2014 Ryan Ploetz. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    var searchTextField: UITextField!
    var searchButton: UIButton!
    
    var resultsViewController:ResultsViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        self.title = "Image Display - Demo"
        
        // Search TextField
        searchTextField = UITextField(frame: CGRect(x: 10, y: 100, width: self.view.bounds.width - 10, height: 42))
        searchTextField.placeholder = "Search Images"
        searchTextField.center.x = self.view.center.x
        searchTextField.backgroundColor = UIColor.whiteColor()
        searchTextField.delegate = self
        self.view.addSubview(searchTextField)
        
        // Search Button
        searchButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
        searchButton.center.x = self.view.center.x
        searchButton.frame.origin.y = searchTextField.frame.origin.y + searchTextField.frame.height + 10
        searchButton.backgroundColor = UIColor.grayColor()
        searchButton.setTitle("Search", forState: .Normal)
        searchButton.addTarget(self, action: "searchButtonClicked:", forControlEvents: .TouchUpInside)
        self.view.addSubview(searchButton)
        
        let image1 = UIImage(named: "GridIcon")
        let imageview = UIImageView(image: image1)
        imageview.center.y = 200
        self.view.addSubview(imageview)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // DELEGATE - searchTextField
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if searchTextField.text == "" {
            println("No Search Item!")
        }
        else {
            println("Searching...")
            searchFor(searchTextField.text)
        }
        return true
    }
    
    // Search Button Action Target
    func searchButtonClicked(sender:UIButton!) {
        if searchTextField.text == "" {
            println("No Search Item!")
        }
        else {
            println("Searching...")
            searchFor(searchTextField.text)
        }
    }
    
    // Called when you want to search for something
    func searchFor(searchTerm:NSString) {
        if (resultsViewController == nil) {
            resultsViewController = ResultsViewController()
        }
        
        navigationController?.pushViewController(resultsViewController!, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

