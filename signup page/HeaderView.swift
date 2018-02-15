//
//  HeaderView.swift
//  signup page
//
//  Created by Lorenzo Brown on 2/14/18.
//  Copyright © 2018 lrnzbr. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame:frame)
        setupGradient()
        setupLabel()
        setupClouds()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupGradient(){
        clipsToBounds = true
        let gradientLayer0 = CAGradientLayer()
        gradientLayer0.frame = self.bounds
        gradientLayer0.colors = [UIColor(red: 0.02, green: 0.36, blue: 0.99, alpha: 1).cgColor, UIColor(red: 0.03, green: 0.64, blue: 1.00, alpha: 1).cgColor]
        gradientLayer0.locations = [1, 0]
        self.layer.addSublayer(gradientLayer0)
        self.alpha = 1
    }
    
    func setupLabel() {
        let logo = UIImageView()
        logo.image = UIImage(named:"logo-full")
        addSubview(logo)
        addConstraintsWithFormat(format: "V:|-[v0(32)]", views: logo)
        //addConstraintsWithFormat(format: "H:[v0(104)]", views: logo)
        logo.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 104).isActive = true
    }
    
    func setupClouds(){
        let cloud1 = UIImageView()
        cloud1.image = UIImage(named:"combined-shape")
        addSubview(cloud1)
        addConstraintsWithFormat(format: "V:|-68-[v0(120)]", views: cloud1)
        addConstraintsWithFormat(format: "H:|[v0(188)]", views: cloud1)
        
        let cloud2 = UIImageView()
        cloud2.image = UIImage(named:"combined-shape-copy-2")
        addSubview(cloud2)
        addConstraintsWithFormat(format: "V:|-105-[v0(93)]", views: cloud2)
        addConstraintsWithFormat(format: "H:|[v0(49)]", views: cloud2)
        
        let cloud3 = UIImageView()
        cloud3.image = UIImage(named:"combined-shape-copy")
        addSubview(cloud3)
        addConstraintsWithFormat(format: "V:|-80-[v0(119)]", views: cloud3)
        addConstraintsWithFormat(format: "H:[v0(176)]|", views: cloud3)
        
        let cloud4 = UIImageView()
        cloud4.image = UIImage(named:"combined-shape-copy-3")
        addSubview(cloud4)
        addConstraintsWithFormat(format: "V:|-107-[v0(124)]", views: cloud4)
        addConstraintsWithFormat(format: "H:[v0(102)]|", views: cloud4)
        
    }

}
