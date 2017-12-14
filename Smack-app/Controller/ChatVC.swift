//
//  ChatVC.swift
//  Smack-app
//
//  Created by Hasan Akoglu on 12/12/2017.
//  Copyright © 2017 Hasan Akoglu. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //OUTLETS
    @IBOutlet weak var menuBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer()) //for sliding into and out of the menu
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer()) //for tapping out of the menu
    }
   
  
}
