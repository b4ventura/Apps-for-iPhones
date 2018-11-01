//
//  ThreeViewController.swift
//  unwind
//
//  Created by Bernard Ventura on 10/27/18.
//  Copyright © 2018 Bernard Ventura. All rights reserved.
//

import UIKit
// import UIApplicationDelegate

class ThreeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var goBack: UIButton!
    
    @IBOutlet weak var goHome: UIButton!
    
    // Close this Viewcontroller Scene and show previous Scene
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // Trigger action to Segue assigned to Segue Identifier
    @IBAction func goHome(_ sender: Any) {
        performSegue(withIdentifier: "unwindIdentifier", sender: self)
    }
    

    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
