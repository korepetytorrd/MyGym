//
//  ViewController.swift
//  MyGym
//
//  Created by Radoslaw on 01/04/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButtonGym(_ sender: UIButton) {
        performSegue(withIdentifier: "GymDeatails", sender: nil)
    }
    
    

}


