//
//  SignupViewController.swift
//  BlueFitnessHR
//
//  Created by Brett Medina on 9/10/18.
//  Copyright © 2018 BlueFitness. All rights reserved.
//

import UIKit
import UIGradient
import FirebaseAuth


class SignupViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet weak var passwordConfirm: UITextField!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var badLoginLabel: UILabel!
    
    
    @IBAction func signUpAction(_ sender: UIButton) {
        if password.text != passwordConfirm.text && password.text != ""{
            self.badLoginLabel.text = "Passwords must match and be at least 8 characters long"
        }
        else{
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "SignupToBase", sender: self)
                }
                else{//Alert error
                    self.badLoginLabel.text = "Invalid email"
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.fromGradientWithDirection(.topToBottom, frame: self.view.frame, colors: [UIColor(red: 1, green: 1, blue: 1, alpha: 1.00), UIColor(red: 39/255.0, green: 110/255.0, blue: 237/255.0, alpha: 1.00)])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
