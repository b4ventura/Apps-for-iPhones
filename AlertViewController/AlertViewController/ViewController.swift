//
//  ViewController.swift
//  AlertViewController
//
//  Created by Administrator on 10/4/18.
//  Copyright © 2018 Bess Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Select an image object as image pattern to UIColor
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bkg.png")!)
    }
    
    @IBAction func showAlert(_ sender: AnyObject){
        // Initialize Alert Controller
        let alertController = UIAlertController(title: "Alert", message: "Make your decision", preferredStyle: .alert)
        
        // Initialize Actions
        let yesAlert = UIAlertAction(title: "Yes", style: .default) {(action) ->
            Void in self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bkg2.png")!)
            print("Select Yes")
        }
        
        let noAlert = UIAlertAction(title: "No", style: .default) { (action) ->
            Void in self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bkg3.png")!)
            print("Select No")
        }
        
        // Add Actions
        alertController.addAction(yesAlert)
        alertController.addAction(noAlert)
        
        // Present Alert Controller
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet(_ sender: AnyObject){
        // Initialize Alert Controller
        let alertActionSheet = UIAlertController(title: "Alert", message: "Make your decision", preferredStyle: .actionSheet)
        
        // Initialize Actions
        let yesActionSheet = UIAlertAction(title: "Yes", style: .default) { (action) ->
            Void in self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bkg2.png")!)
            print("Select Yes")
        }
        
        let noActionSheet = UIAlertAction(title: "No", style: .default) { (action) ->
            Void in self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bkg3.png")!)
            print("Select No")
        }
        
        // Add Actions
        alertActionSheet.addAction(yesActionSheet)
        alertActionSheet.addAction(noActionSheet)
        
        // Present Alert Controller
        self.present(alertActionSheet, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

