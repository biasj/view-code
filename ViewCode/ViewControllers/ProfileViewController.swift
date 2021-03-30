//
//  ViewController.swift
//  ViewCode
//
//  Created by Beatriz Sato on 29/03/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let screen = ProfileView()
    weak var coordinator: MainCoordinator?
    
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
    
    @objc func loginButtonTapped(_ sender: UIButton) {
        coordinator?.login()
    }
    
    @objc func createAccount(_ sender: UIButton) {
        coordinator?.createAccount()
    }

}

