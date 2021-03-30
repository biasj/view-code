//
//  MainCoordinator.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let vc = ProfileViewController()
        vc.coordinator = self
        navigationController.delegate = self
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
    
    // para detectar se vc foi apresentada
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        // pega a vc da qual está partindo
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        // checa se a fromVC já está no array. Se estiver, significa que está fazendo o push ao invés do pop. Sair
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        
        // se chegar aqui, quer dizer que está fazendo o pop (é para retirar), então checa se é a vc que a gente quer retirar
        if let createAccountViewController = fromViewController as? CreateAccountViewController {
            // está retirando a view controller, então retira seu coordinator também
            childDidFinish(createAccountViewController.coordinator!)
            print("pop")
        }
    }
}
