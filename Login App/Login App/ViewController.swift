//
//  ViewController.swift
//  Login App
//
//  Created by Bernard Ventura on 11/18/18.
//  Copyright © 2018 Bernard Ventura. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    // outlets
    @IBOutlet weak var emailOu: UITextField!
    @IBOutlet weak var passwordOu: UITextField!
    
    
    
    
    // var
    
    
    
    // constants
    let userDefault = UserDefaults.standard
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if userDefault.bool(forKey: "usersignedin") {
            performSegue(withIdentifier: "segueToSignedIn", sender: self)
        }
        
    }
    
    
    func createuser(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error == nil {
                // user created
                print("User created")
                // sign in user
                self.signInUser(email: email, password: password)
            } else {
                print(error?.localizedDescription)
            }
        }
    }
    
    func signInUser(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) {(user, error) in
            if error == nil {
                // signed in
                print("User signed in")
                self.userDefault.set(true, forKey: "usersignedin")
                self.userDefault.synchronize()
                self.performSegue(withIdentifier: "segueToSignedIn", sender: self)
                
            } else if (error?._code == AuthErrorCode.userNotFound.rawValue){
                self.createuser(email: email, password: password)
            } else {
                print(error)
                print(error?.localizedDescription)
            }
            
        }
    
    }
    
    // action
        
    @IBAction func singInBtnPressed(_ sender: Any) {
        signInUser(email: emailOu.text!, password: passwordOu.text!)
        
    }
}





