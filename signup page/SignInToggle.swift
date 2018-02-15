//
//  SignInToggle.swift
//  signup page
//
//  Created by Lorenzo Brown on 2/14/18.
//  Copyright © 2018 lrnzbr. All rights reserved.
//

import UIKit

class SignInToggle: UIView {
    
    var viewController:ViewController?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let segmentedControl = UISegmentedControl()
        segmentedControl.insertSegment(withTitle: "SIGN IN", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "CREATE ACCOUNT", at: 1, animated: true)
        
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false

        addSubview(segmentedControl)
        addConstraintsWithFormat(format: "V:|[v0]|", views: segmentedControl)
        addConstraintsWithFormat(format: "H:|[v0]|", views: segmentedControl)
        segmentedControl.backgroundColor = .clear
        segmentedControl.tintColor = .clear
        // Add lines below the segmented control's tintColor
        segmentedControl.setTitleTextAttributes([
            NSAttributedStringKey.font : UIFont(name: "DINCondensed-Bold", size: 18)!,
            NSAttributedStringKey.foregroundColor: UIColor.lightGray
            ], for: .normal)
        segmentedControl.setTitleTextAttributes([
            NSAttributedStringKey.font : UIFont(name: "DINCondensed-Bold", size: 18)!,
            NSAttributedStringKey.foregroundColor: UIColor.orange
            ], for: .selected)
        segmentedControl.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func stateChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            viewController?.sip.isHidden = true
            viewController?.signInButton.isHidden = true
            viewController?.forgotPassword.isHidden = true
            
            viewController?.cap.isHidden = false
            viewController?.createAccountButton.isHidden = false
            UIView.animate(withDuration: 0.2, animations: {
                self.viewController?.cap.frame = CGRect(x: (self.viewController?.cap.frame.origin.x)!, y: (self.viewController?.cap.frame.origin.y)!, width: (self.viewController?.cap.frame.width)!, height: (self.viewController?.cap.frame.height)! + 100)
                
                
                 self.viewController?.createAccountButton.frame = CGRect(x: (self.viewController?.createAccountButton.frame.origin.x)!, y: (self.viewController?.createAccountButton.frame.origin.y)!, width: (self.viewController?.createAccountButton.frame.width)!, height: (self.viewController?.createAccountButton.frame.height)! + 200)

                })
            
            
        default:
            
            UIView.animate(withDuration: 0.2, animations: {
                self.viewController?.cap.frame = CGRect(x: (self.viewController?.cap.frame.origin.x)!, y: (self.viewController?.cap.frame.origin.y)!, width: (self.viewController?.cap.frame.width)!, height: (self.viewController?.cap.frame.height)! - 100)
                
                self.viewController?.createAccountButton.frame = CGRect(x: (self.viewController?.createAccountButton.frame.origin.x)!, y: (self.viewController?.createAccountButton.frame.origin.y)!, width: (self.viewController?.createAccountButton.frame.width)!, height: (self.viewController?.createAccountButton.frame.height)! - 200)
                
            })
            
            viewController?.sip.isHidden = false
            viewController?.signInButton.isHidden = false
            viewController?.forgotPassword.isHidden = false
            
            viewController?.cap.isHidden = true
            viewController?.createAccountButton.isHidden = true
            
           
            
          
        }
    }
    

    
    
    
}
