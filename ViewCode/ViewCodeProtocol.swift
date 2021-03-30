//
//  ViewCodeProtocol.swift
//  ViewCode
//
//  Created by Beatriz Sato on 29/03/21.
//

import Foundation

protocol ViewCode {
    func addView()
    func addConstraint()
    func aditionalSetup()
    func setup()
}

extension ViewCode {
    func setup() {
        addView()
        addConstraint()
        aditionalSetup()
    }
}
