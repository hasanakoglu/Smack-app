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
    var topColour: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) {
    didSet {
        self.setNeedsLayout() //when we set it, this updates the layout of the view dynamically
        }
    }
    
    @IBInspectable
    var bottomColour: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) {
        didSet {
            self.setNeedsLayout() //when we set it, this updates the layout of the view
        }
    }
    //this is called whenever we change the layer 
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColour.cgColor, bottomColour.cgColor]
        gradientLayer.startPoint = CGPoint(x:0 , y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds //to equal it to the size of the uiview
        self.layer.insertSublayer(gradientLayer, at: 0) //add gradient layer to the uiview layer
        
    }
    
}
