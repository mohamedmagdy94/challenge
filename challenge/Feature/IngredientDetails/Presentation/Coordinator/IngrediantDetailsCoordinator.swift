//
//  IngrediantDetailsCoordinator.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation
import UIKit

class IngrediantDetailsCoordinator: IngrediantDetailsCoordinatorProtocol {
    
    private var navigationController: UINavigationController?
    private var extractIngredientsService: ExtractIngredientProtocol
    
    init(navigationController: UINavigationController,extractIngredientsService: ExtractIngredientProtocol){
        self.navigationController = navigationController
        self.extractIngredientsService = extractIngredientsService
    }
    
    func start() {
        let storyboard = R.storyboard.ingredientDetails
        guard let view = storyboard.ingredientDetailsViewController() else{
            assertionFailure("Couldn't generate View")
            return
        }
    }
    
    func showTotal() {
        
    }
    
}
