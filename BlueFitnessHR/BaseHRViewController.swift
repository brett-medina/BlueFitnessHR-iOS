//
//  BaseHRViewController.swift
//  BlueFitnessHR
//
//  Created by Kushan Gupta on 1/9/19.
//  Copyright © 2019 BlueFitness. All rights reserved.
//

import UIKit

class BaseHRViewController: UIViewController {

    @IBOutlet var heart: UIImageView!
    @IBOutlet var hr: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heartBeat(button: heart, heartRate: Int(hr.text!)!)
        // Do any additional setup after loading the view.
    }
    
    func heartBeat(button: UIImageView, heartRate: IntegerLiteralType) {
        // Taken off Stack Overflow
        print(heartRate)
        button.isUserInteractionEnabled = true
        var velocity = 0.5
        if heartRate > 100 {
            velocity = 0.7
        }
        
        let pulse1 = CASpringAnimation(keyPath: "transform.scale")
        pulse1.duration = 0.6
        pulse1.fromValue = 1.0
        pulse1.toValue = 1.12
        pulse1.autoreverses = true
        pulse1.repeatCount = 1000
        pulse1.initialVelocity = CGFloat(velocity)
        pulse1.damping = 0.8
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 1000
        animationGroup.repeatCount = 1000
        animationGroup.animations = [pulse1]
        
        button.layer.add(animationGroup, forKey: "pulse")
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
