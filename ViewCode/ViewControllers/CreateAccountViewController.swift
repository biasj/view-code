//
//  CreateAccountViewController.swift
//  ViewCode
//
//  Created by Beatriz Sato on 30/03/21.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    weak var coordinator: CreateAccountCoordinator?
    let createAccountView = CreateAccountView()
    
    override func loadView() {
        self.view = createAccountView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // navegação para trás será feita por meio do delegate da navcontroller no MainCoordinator
//    override func viewDidDisappear(_ animated: Bool) {
//        coordinator?.didFinishCreating()
//    }


}
