//
//  MyView.swift
//  ViewCode
//
//  Created by Beatriz Sato on 29/03/21.
//

import Foundation
import UIKit

final class ProfileView: UIView {
    
    var createAccountButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Create Account", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // caso precise chamar algum método dentro dessa closure, usar lazy var
    var loginButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Login", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var gridContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var leftBox = GridBoxView()
    var rightBox = GridBoxView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension ProfileView: ViewCode {
    func addView() {
        // adiciona à view
        addSubview(loginButton)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
        addSubview(createAccountButton)
    
    }
    
    func addConstraint() {
        // adiciona constraint
        loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
        
        gridContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        gridContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        gridContainer.heightAnchor.constraint(equalToConstant: 320).isActive = true
        gridContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        
        createAccountButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        createAccountButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30).isActive = true
        createAccountButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        createAccountButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
        
    }
    
    func aditionalSetup() {
        loginButton.backgroundColor = .blue
        loginButton.layer.cornerRadius = 10
        
        createAccountButton.backgroundColor = .lightGray
        createAccountButton.layer.cornerRadius = 10
    }
    
}
