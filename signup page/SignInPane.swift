//
//  SignInPane.swift
//  signup page
//
//  Created by Lorenzo Brown on 2/14/18.
//  Copyright © 2018 lrnzbr. All rights reserved.
//

import UIKit

class SignInPane: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        //TITLE Label
        let titleLabel = UILabel()
        titleLabel.text = "Sign in to personal giving account"
        titleLabel.textColor = UIColor.black
        titleLabel.textAlignment = .center
        addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.addConstraintsWithFormat(format: "V:|-15-[v0(29)]", views: titleLabel)
        self.addConstraintsWithFormat(format: "H:[v0(295)]", views: titleLabel)
        
        
        
        // EMAIL FIELD
        let emailField = UITextField()
        emailField.placeholder = "Email"
        emailField.textColor = UIColor.gray
        self.addSubview(emailField)
        emailField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.addConstraintsWithFormat(format: "V:[v0]-10-[v1(40)]", views: titleLabel, emailField)
        self.addConstraintsWithFormat(format: "H:[v0(295)]", views: emailField)
        
        //Bottom Line on email text field
        let bottomLine1 = UIView()
        bottomLine1.backgroundColor = UIColor.gray
        self.addSubview(bottomLine1)
        bottomLine1.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.addConstraintsWithFormat(format: "V:[v0][v1(1)]", views: emailField,bottomLine1)
        bottomLine1.widthAnchor.constraint(equalTo: emailField.widthAnchor, multiplier: 1.0, constant: 0).isActive = true
        
        //PASSWORD FIELD
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.isSecureTextEntry = true
        passwordField.textColor = UIColor.gray
        self.addSubview(passwordField)
        passwordField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.addConstraintsWithFormat(format: "V:[v0][v1(40)]", views: bottomLine1, passwordField)
        self.addConstraintsWithFormat(format: "H:[v0(295)]", views: passwordField)
        
        //Bottom Line on email text field
        let bottomLine2 = UIView()
        bottomLine2.backgroundColor = UIColor.gray
        self.addSubview(bottomLine2)
        bottomLine2.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.addConstraintsWithFormat(format: "V:[v0][v1(1)]", views: passwordField,bottomLine2)
        bottomLine2.widthAnchor.constraint(equalTo: passwordField.widthAnchor, multiplier: 1.0, constant: 0).isActive = true

}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}

}
