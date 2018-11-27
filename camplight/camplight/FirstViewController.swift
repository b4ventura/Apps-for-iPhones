//
//  FirstViewController.swift
//  camplight
//
//  Created by Bernard Ventura on 10/16/18.
//  Copyright © 2018 Bess Ho. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBAction func selectSlider(_ sender: AnyObject) {
        // Assign slider's value to view's alpha property
        self.view.alpha = CGFloat(slider.value + 0.2)
        print(String(format: "Show value %0.2f", self.slider.value))
    }
    
    @IBOutlet weak var switcher: UISwitch!
    
    @IBAction func selectSwitch(_ sender: AnyObject) {
        // If switch's on property is on set the ViewController's view background color to yellow
        if (self.switcher.isOn){
            self.view.backgroundColor = UIColor.yellow
        } else {
            // If switch's on property is off set the view background color to white
            self.view.backgroundColor = UIColor.white
        }
    }
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func selectStepper(_ sender: AnyObject) {
        // Assign stepper value to alpha value of ViewController's view
        self.view.alpha = CGFloat(self.stepper.value/100)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}



