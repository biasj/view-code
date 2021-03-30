//
//  MainCoordinator.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let vc = ProfileViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        // cria instancia do CreateAccountCoordinator
        let child = CreateAccountCoordinator(navigationController: navigationController)
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    func login() {
        let vc = LoginViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func childDidFinish(_ child: Coordinator) {
        // acha na estrutura onde o filho está para poder retirá-lo do array
        for(index, coordinator) in childCoordinators.enumerated() {
            // triple equals só podem ser usados em classes, e coordinators devem funcionar em classes também, então fazer protocolo Coordinator herdar de AnyObject
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
