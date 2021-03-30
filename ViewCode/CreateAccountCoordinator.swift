//
//  BuyCoordinator.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import UIKit

class CreateAccountCoordinator: Coordinator {
    // propriedade do pai para poder remover quando necessário
    weak var parentCoordinator : MainCoordinator?
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let vc = CreateAccountViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func didFinishCreating() {
        parentCoordinator?.childDidFinish(self)
    }
}
