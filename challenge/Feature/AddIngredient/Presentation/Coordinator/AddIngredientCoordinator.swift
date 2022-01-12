//
//  AddIngredientCoordinator.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 10/01/2022.
//

import Foundation
import UIKit

class AddIngredientCoordinator: AddIngredientCoordinatorProtocol {
    
    
    private var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = R.storyboard.addIngredient
        guard let view = storyboard.addIngredientViewController() else{
            assertionFailure("Couldn't generate View")
            return
        }
        let configurator = AddIngredientConfigurator(view: view, coordinator: self)
        let configuredView = configurator.configure()
        navigationController?.pushViewController(configuredView, animated: false)
    }
    
    func showIngredients(ingredientsService: ExtractIngredientProtocol) {
        guard let navigationController = navigationController else {
            assertionFailure("Couldn't Push View")
            return
        }
        let nextScreen = IngrediantDetailsCoordinator(navigationController: navigationController,extractIngredientsService: ingredientsService)
        nextScreen.start()
    }
    
}
