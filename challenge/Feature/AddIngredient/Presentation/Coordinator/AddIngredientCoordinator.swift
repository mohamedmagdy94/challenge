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
        let view = storyboard.addIngredientViewController() ?? UIViewController()
        navigationController?.pushViewController(view, animated: false)
    }
    
    func showIngredients(ingredientsService: ExtractIngredientProtocol) {
        
    }
    
}
