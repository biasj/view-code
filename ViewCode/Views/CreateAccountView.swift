//
//  CreateAccountView.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import Foundation

import UIKit

final class CreateAccountView: UIView {
    
    var label: UILabel = {
        let label = UILabel()
        label.text = "Create Account"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var createAccountGrid: GridBoxView = {
        let view = GridBoxView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .cyan
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension CreateAccountView: ViewCode {
    func addView() {
        // adiciona à view
        addSubview(label)
        addSubview(createAccountGrid)
        
    }
    
    func addConstraint() {
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        // adiciona constraint
        createAccountGrid.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        createAccountGrid.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        createAccountGrid.heightAnchor.constraint(equalToConstant: 300).isActive = true
        createAccountGrid.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    func aditionalSetup() {
        
    }
    
}
