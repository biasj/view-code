//
//  Coordinator.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import UIKit

// protocolo que criará coordenadores para controlar o fluxo das view controllers
// AnyObject para ser "conformado" apenas por classes, e não structs
protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}

