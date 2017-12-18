//
//  CreateAccountVC.swift
//  Smack-app
//
//  Created by Hasan Akoglu on 15/12/2017.
//  Copyright © 2017 Hasan Akoglu. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closePressed(_ sender: Any) {
performSegue(withIdentifier: UNWIND, sender: nil) //get back to original vc}
  }
}
