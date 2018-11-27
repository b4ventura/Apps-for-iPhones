//
//  signedInViewController.swift
//  Login App
//
//  Created by Bernard Ventura on 11/18/18.
//  Copyright © 2018 Bernard Ventura. All rights reserved.
//

import UIKit
import Firebase


class signedInViewController: UIViewController {
    
    @IBOutlet weak var emailOu: UILabel!
    
    
    // Constants
    let userDefault = UserDefaults.standard
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let email = Auth.auth().currentUser?.email else { return }
        emailOu.text = email
    }
        // Actions
    
    @IBAction func signOutBtnPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            userDefault.removeObject(forKey: "usersignedin")
            userDefault.synchronize()
            self.dismiss(animated: true, completion: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
    }
    
    

}
