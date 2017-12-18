//
//  LoginVC.swift
//  Smack-app
//
//  Created by Hasan Akoglu on 14/12/2017.
//  Copyright © 2017 Hasan Akoglu. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

   

    @IBOutlet weak var closePressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closebtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccntBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    
  
}
