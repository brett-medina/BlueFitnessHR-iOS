//
//  ViewController.swift
//  BlueFitnessHR
//
//  Created by Brett Medina on 9/6/18.
//  Copyright © 2018 BlueFitness. All rights reserved.
//

import UIKit
import FirebaseAuth
import UIGradient

class LoginController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var badLoginLabel: UILabel!
    @IBOutlet weak var signupLabel: UILabel!
    
    // NOTE: This button lies over label
    @IBAction func signupButton(_ sender: UIButton) {
        
    }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        guard let email = emailTextField.text else {changeErrorLabel(); return}
        guard let password = passwordTextField.text else {changeErrorLabel(); return}
        // handle login
        Auth.auth().signIn(withEmail: email, password: password) { user, error in
            if (error == nil && user != nil) {
                // valid login
//                self.badLoginLabel.text = ""
                DispatchQueue.main.async(){
                    self.performSegue(withIdentifier: "LoginToHome", sender: self)
                }
                
//                print("HHIH")
            } else {
                // bad login
                self.badLoginLabel.text = "Invalid email and/or password"
            }
            // reset text fields
            self.emailTextField.text = ""
            self.passwordTextField.text = ""
        }
    }
    
    override func viewDidLoad() {
        // cache if already logged in, don't have to login
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.fromGradientWithDirection(.topToBottom, frame: self.view.frame, colors: [UIColor(red: 1, green: 1, blue: 1, alpha: 1.00), UIColor(red: 39/255.0, green: 110/255.0, blue: 237/255.0, alpha: 1.00)])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeErrorLabel() {
        badLoginLabel.text = "Please enter both email and password."
    }


}
