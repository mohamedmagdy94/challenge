//
//  AppCoordinator.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation
import UIKit

class AppCoordinator{
    
    private var window: UIWindow?
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start(){
        let navigationController = UINavigationController()
        let firstScreenCoordinator = AddIngredientCoordinator(navigationController: navigationController)
        let firstScreen = firstScreenCoordinator.start()
        window?.rootViewController = navigationController
        
    }
}
