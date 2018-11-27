//
//  SecondViewController.swift
//  camplight
//
//  Created by Bernard Ventura on 10/16/18.
//  Copyright © 2018 Bess Ho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var buttonCourse: UIBarButtonItem!
    
    @IBOutlet weak var buttonCampus: UIBarButtonItem!
    
    @IBOutlet weak var textview: UITextView!
    
    @IBAction func showCourse(_ sender: AnyObject) {
        // Retrieve the path of specific file from main bundle
        let path = Bundle.main.path(forResource: "course", ofType: "txt")
        
        // Handle error using do...catch
        let contents: NSString
        do {
            // Encode the file content into NSString
            contents = try NSString(contentsOfFile: path!, encoding: String.Encoding.utf8.rawValue)
        } catch _ {
            contents = ""
        }
        
        // Load file content as string into text property of TextView
        textview.text = contents as String
    }
    
    @IBAction func showCampus(_ sender: AnyObject) {
        let campus = "UCSC Extension Silicon Valley \n3175 Bowers Ave, Santa Clara, CA 95054 \nTel: (408) 861-3700"
        self.textview.text = campus
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
