//
//  ViewController.swift
//  ViewCode
//
//  Created by Beatriz Sato on 29/03/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let screen = ProfileView()
    
    // refere direto ao protocolo ao invés do tipo concreto
//    weak var coordinator: (LogginIn & AccountCreating)?
    
    // ou usa as closures
    var loginAction: (() -> Void)?
    var createAccountAction: (() -> Void)?
    
    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // isso é aqui?
        screen.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        screen.createAccountButton.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
        
    }
    
    
    // e usa assim com o coordinator
//    @objc func loginButtonTapped(_ sender: UIButton) {
//        coordinator?.login()
//    }
//
//    @objc func createAccount(_ sender: UIButton) {
//        coordinator?.createAccount()
//    }

    
    // implementação com closure
    @objc func loginButtonTapped(_ sender: UIButton) {
        loginAction?()
    }
    
    @objc func createAccount(_ sender: UIButton) {
        createAccountAction?()
    }
}

