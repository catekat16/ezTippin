//
//  LaunchViewController.swift
//  ezTippin
//
//  Created by Xiaoyan Yang on 5/10/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import Foundation
import UIKit

class LaunchViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(white: 1, alpha: 0.1)
        
        //view.setCrazyBackground(colorOne: Colors.white, colorTwo: Colors.blue, colorThree: Colors.pink, colorFour: Colors.white)
        
        let darkTextLabel = UILabel()
        darkTextLabel.text = "ezTippin"
        darkTextLabel.textColor = UIColor(white: 1, alpha: 0.2)
        darkTextLabel.font = UIFont.systemFont(ofSize: 80)
        darkTextLabel.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        darkTextLabel.textAlignment = .center
        
        let shinyTextLabel = UILabel()
        shinyTextLabel.text = "ezTippin"
        shinyTextLabel.textColor = .white
        shinyTextLabel.font = UIFont.systemFont(ofSize: 80)
        shinyTextLabel.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        shinyTextLabel.textAlignment = .center
        
        view.addSubview(shinyTextLabel)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0, 0.5, 1]
        gradientLayer.frame = shinyTextLabel.frame
        
        let angle = 45 * CGFloat.pi / 180
        gradientLayer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)
        
        // turn the gradient into the mask for our shinytextlabel
        
        // view.layer.addSublayer(gradientLayer)
        // ^ don't wanna add it to view's entire subview hierarchy
        
        shinyTextLabel.layer.mask = gradientLayer
        
        // animation:
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.duration = 2 // makes it less crazy
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        animation.repeatCount = Float.infinity
        
        gradientLayer.add(animation, forKey: "some key")
    }
    
}
