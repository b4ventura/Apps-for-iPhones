//
//  ViewController.swift
//  helloworld
//
//  Created by Mac Admin on 9/17/18.
//  Copyright © 2018 Bess Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Print in console
        print("Hello World")
        // Create label
        let label = UILabel (frame:  CGRect(x:0, y:0,width:414,height:736))
        label.text = "Hello World"
        label.textAlignment = NSTextAlignment.center
        // Assign background color in orange
        label.backgroundColor = UIColor.orange
        self.view.addSubview(label)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

