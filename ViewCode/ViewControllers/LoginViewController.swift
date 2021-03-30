//
//  LoginViewController.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import UIKit

class LoginViewController: UIViewController {
    let loginScreen = LoginView()
    weak var coordinator: MainCoordinator?
    
    var textTitle = ""
    
    override func loadView() {
        self.view = loginScreen
        loginScreen.loginGrid.title.text = textTitle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


