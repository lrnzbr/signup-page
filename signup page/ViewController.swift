//
//  ViewController.swift
//  signup page
//
//  Created by Lorenzo Brown on 2/14/18.
//  Copyright © 2018 lrnzbr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var header:HeaderView!
    var st:SignInToggle!
    var sip:SignInPane!
    var cap:CreateAccountPane!
    var signInButton:UIButton!
    var forgotPassword:UIButton!
    var createAccountButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupHeader()
        setupSignInPane()
        setupSignInToggle()
        setupSignInButton()
        setupForgotPasswordButton()
        
        setupCreateAccountPane()
        setupCreateAccountButton()
     
    }
    
  
    
    func setupHeader() {
        let viewHeight = view.frame.height * 0.37
        header = HeaderView(frame:CGRect(x: 0, y: 0, width: self.view.frame.width, height: viewHeight))
        view.addSubview(header)
        view.addConstraintsWithFormat(format: "V:|[v0(\(viewHeight))]", views: header)
        view.addConstraintsWithFormat(format: "H:|[v0]|", views: header)
        
        
    }
    
    func setupSignInToggle(){
        st = SignInToggle(frame:CGRect.zero)
        st.viewController = self
        view.addSubview(st)
        view.addConstraintsWithFormat(format: "V:[v0(20)]-[v1]", views: st, sip)
        st.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    func setupSignInPane() {
        sip = SignInPane(frame:CGRect.zero)
        view.addSubview(sip)
        view.addConstraintsWithFormat(format: "V:[v0(208)]", views: sip)
        view.addConstraintsWithFormat(format: "H:[v0(343)]", views: sip)
        sip.centerYAnchor.constraint(equalTo: header.bottomAnchor).isActive = true
        sip.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sip.layer.cornerRadius = 20.0
        sip.layer.borderWidth = 2.0
        sip.layer.shadowColor = UIColor.lightGray.cgColor
        sip.layer.shadowOffset = CGSize(width:0,height: 2.0)
        sip.layer.shadowRadius = 2.0
        sip.layer.shadowOpacity = 1.0
        sip.layer.masksToBounds = false;
        sip.layer.shadowPath = UIBezierPath(roundedRect:sip.bounds, cornerRadius:sip.layer.cornerRadius).cgPath

        
    }
    
    func setupSignInButton() {
        signInButton = UIButton()
        let signInImage = UIImage(named:"btn-full-shadow")
        signInButton.setImage(signInImage, for: .normal)
        view.addSubview(signInButton)
        signInButton.centerYAnchor.constraint(equalTo: sip.bottomAnchor).isActive = true
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addConstraintsWithFormat(format: "V:[v0(96)]", views: signInButton)
        view.addConstraintsWithFormat(format: "H:[v0(317)]", views: signInButton)
        
    }
    
    func setupForgotPasswordButton() {
        forgotPassword = UIButton()
        forgotPassword.setTitle("Forgot your password?", for: .normal)
        forgotPassword.setTitleColor(UIColor(red: 0.00, green: 0.46, blue: 0.97, alpha: 1), for: .normal)
        forgotPassword.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 12)
        view.addSubview(forgotPassword)
        forgotPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addConstraintsWithFormat(format: "V:[v0]-10-[v1(25)]", views: signInButton, forgotPassword)
      
        }
    
    func setupCreateAccountPane() {
        cap = CreateAccountPane(frame:CGRect.zero)
        view.addSubview(cap)
        view.addConstraintsWithFormat(format: "V:[v0(208)]", views: cap)
        view.addConstraintsWithFormat(format: "H:[v0(343)]", views: cap)
        cap.centerYAnchor.constraint(equalTo: header.bottomAnchor).isActive = true
        cap.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cap.layer.cornerRadius = 20.0
        cap.layer.borderWidth = 2.0
        cap.layer.shadowColor = UIColor.lightGray.cgColor
        cap.layer.shadowOffset = CGSize(width:0,height: 2.0)
        cap.layer.shadowRadius = 2.0
        cap.layer.shadowOpacity = 1.0
        cap.layer.masksToBounds = false;
        cap.layer.shadowPath = UIBezierPath(roundedRect:cap.bounds, cornerRadius:cap.layer.cornerRadius).cgPath
        cap.isHidden = true
        
    }
    
    func setupCreateAccountButton() {
        createAccountButton = UIButton()
        let signInImage = UIImage(named:"btn-full-shadow2")
        createAccountButton.setImage(signInImage, for: .normal)
        view.addSubview(createAccountButton)
        createAccountButton.centerYAnchor.constraint(equalTo: cap.bottomAnchor).isActive = true
        createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addConstraintsWithFormat(format: "V:[v0(96)]", views: createAccountButton)
        view.addConstraintsWithFormat(format: "H:[v0(317)]", views: createAccountButton)
        createAccountButton.isHidden = true
    }
    
    
    
     

}

extension UIView {
    func addConstraintsWithFormat(format:String, views:UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
        
    }
}


