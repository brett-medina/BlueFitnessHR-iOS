//
//  NavigationBarViewController.swift
//  BlueFitnessHR
//
//  Created by Kushan Gupta on 1/11/19.
//  Copyright © 2019 BlueFitness. All rights reserved.
//

import UIKit

class NavigationBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var image = UIImage(named: "bar_button")
        image = image?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image:image , style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        // Do any additional setup after loading the view.
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
