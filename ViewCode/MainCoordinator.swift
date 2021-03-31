//
//  MainCoordinator.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import UIKit

// ao invés de criar child coordinators como classes (ex branch child), faz conformar com protocolos
class MainCoordinator: Coordinator, LogginIn, AccountCreating {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let vc = ProfileViewController()
//        vc.coordinator = self
        
        // com as closures
        vc.loginAction = { [weak self] in
            self?.login()
        }
        
        vc.createAccountAction = { [weak self] in
            self?.createAccount()
        }
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func login() {
        let vc = LoginViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}

protocol AccountCreating: AnyObject {
    func createAccount()
}

protocol LogginIn: AnyObject {
    func login()
}
