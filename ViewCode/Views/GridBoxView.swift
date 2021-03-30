//
//  GridBoxView.swift
//  ViewCode
//
//  Created by Beatriz Sato on 29/03/21.
//

import UIKit

final class GridBoxView: UIView {
    
    var image: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    var textContainer: UIStackView = {
       let view = UIStackView()
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8.0
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    var title: UITextView = {
        let view = UITextView(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    var subtitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .blue
        
        return view
    }()
    
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension GridBoxView: ViewCode {
    func addView() {
        // adiciona à view
        addSubview(image)
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subtitle)
        addSubview(textContainer)
    }
    
    func addConstraint() {
        // adiciona constraint
        image.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive = true
        image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        
        textContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        textContainer.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10).isActive = true
        textContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        textContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    func aditionalSetup() {
        
    }
    
}


