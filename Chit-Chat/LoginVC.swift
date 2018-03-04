//
//  LoginVC.swift
//  Chit-Chat
//
//  Created by Chaudhary Himanshu Raj on 04/03/18.
//  Copyright © 2018 Chaudhary Himanshu Raj. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // view.backgroundColor = UIColor(red: 146/255, green: 234/255, blue: 209/255, alpha: 1)
        view.backgroundColor = UIColor(r: 38, g: 124, b: 196)
        
        view.addSubview(profileImageView)
        view.addSubview(inputContainerView)
        view.addSubview(logRegButton)
        
        setupProfileImageView()
        setupInputContainerView()
        setupLogRegButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    //MARK: Profile Image.
    // Creating.
    let profileImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "icon")
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        return img
    }()
    //Setting.
    func setupProfileImageView() {
        //Constraints :  need x,y, width and height
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -20).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 140).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 140).isActive = true
    }
    
    
    //MARK:Input Container View
    // Creating.
    let inputContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        return view
    }()
    // Setting.
    func setupInputContainerView() {
        //Constraints :  need x,y, width and height
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        inputContainerView.addSubview(nameTextField)
        inputContainerView.addSubview(nameSeparator)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeparator)
        inputContainerView.addSubview(passTextField)
        
        setupNameTextField()
        setupNameSeparatorView()
        setupEmailTextField()
        setupEmailSeparatorView()
        setupPasswordTextField()
    }
    
    
    //MARK:Login Register Button
    // Creating.
    let logRegButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 255, g: 23, b: 68)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 6
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        return button
    }()
    // Setting.
    func setupLogRegButton(){
        //Constraints :  need x,y, width and height
        logRegButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logRegButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 12).isActive = true
        
        //how wide
        logRegButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        logRegButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    
    //MARK: Name text field.
    // Creating.
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    // Setting.
    func setupNameTextField(){
        //Constraints :  need x,y, width and height
        nameTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 16).isActive = true
        nameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
    }
    
    //MARK: Name Separator.
    // Creating.
    let nameSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // Setting.
    func setupNameSeparatorView(){
        //Constraints :  need x,y, width and height
        nameSeparator.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        nameSeparator.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        nameSeparator.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        nameSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    //MARK: Email text field.
    // Creating.
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    // Setting.
    func setupEmailTextField(){
        //Constraints :  need x,y, width and height
        emailTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
    }
    
    //MARK: Email Separator.
    // Creating.
    let emailSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // Setting.
    func setupEmailSeparatorView(){
        //Constraints :  need x,y, width and height
        emailSeparator.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        emailSeparator.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        emailSeparator.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailSeparator.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    //MARK: Pasword text field.
    // Creating.
    let passTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        return tf
    }()
    // Setting.
    func setupPasswordTextField(){
        //Constraints :  need x,y, width and height
        passTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
        passTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        passTextField	.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
    }
}
