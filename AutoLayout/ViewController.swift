//
//  ViewController.swift
//  AutoLayout
//
//  Created by Calvin Cheng on 1/4/15.
//  Copyright (c) 2015 Hello HQ Pte. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func setUpViews() {
        
        var redView = UIView()
        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
        redView.backgroundColor = UIColor.redColor()
        
        var yellowView = UIView()
        yellowView.setTranslatesAutoresizingMaskIntoConstraints(false)
        yellowView.backgroundColor = UIColor.yellowColor()
        
        self.view.addSubview(redView)
        self.view.addSubview(yellowView)
        
        // constraints
        let viewsDictionary = ["top":yellowView, "bottom":redView]
        
        //position constraints
        let view_constraint_FixedV: NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:[top(==200)]",
            options: NSLayoutFormatOptions(0),
            metrics: nil,
            views: viewsDictionary)

        let view_constraint_FixedH: NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:[top(==100)]",
            options: NSLayoutFormatOptions(0),
            metrics: nil,
            views: viewsDictionary)
        
        let view_constraint_H:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[top]-10-|",
            options: NSLayoutFormatOptions(0),
            metrics: nil,
            views: viewsDictionary)
        
        let view_constraint_H2:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[bottom]-10-|",
            options: NSLayoutFormatOptions(0),
            metrics: nil,
            views: viewsDictionary)
        
        let view_constraint_V:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[top(bottom)]-[bottom]-10-|",
            options: NSLayoutFormatOptions.AlignAllLeading,
            metrics: nil,
            views: viewsDictionary)
        
        view.addConstraints(view_constraint_FixedV)  // Vertical at 200px (fixed height for yellowView)
        view.addConstraints(view_constraint_FixedH)  // Horizontal at 100px (width height for yellowView)
        view.addConstraints(view_constraint_H)
        view.addConstraints(view_constraint_H2)
        view.addConstraints(view_constraint_V)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setUpViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

