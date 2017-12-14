//
//  GradientView.swift
//  Smack-app
//
//  Created by Hasan Akoglu on 12/12/2017.
//  Copyright © 2017 Hasan Akoglu. All rights reserved.
//

import UIKit
import SnapKit


//be able to render into stroyboard, use ibdesignable
@IBDesignable
class GradientView: UIView {

  @IBInspectable
    var topColour: UIColor = UIColor.blue {
    didSet {
        self.setNeedsLayout() //when we set it, this updates the layout of the view
        }
    }
    
    @IBInspectable
    var bottomColour: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout() //when we set it, this updates the layout of the view
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColour.cgColor, bottomColour.cgColor]
        
    }
    
}
