//
//  ChannelVC.swift
//  Smack-app
//
//  Created by Hasan Akoglu on 12/12/2017.
//  Copyright © 2017 Hasan Akoglu. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

}
