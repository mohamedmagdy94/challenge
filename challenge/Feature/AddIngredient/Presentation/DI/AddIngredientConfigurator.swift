//
//  AddIngredientConfigurator.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation

class AddIngredientConfigurator{
    
    var view: AddIngredientViewController
    var coordinator: AddIngredientCoordinatorProtocol
    
    init(view: AddIngredientViewController,coordinator: AddIngredientCoordinatorProtocol){
        self.view = view
        self.coordinator = coordinator
    }
    
    func configure()->AddIngredientViewController{
        let validator = AddIngredientValidator()
        let service = ExtractIngredientService(validator: validator)
        let useCase = AddIngredientUseCase(extractIngredientsService: service)
        let viewModel = AddIngredientViewModel(useCase: useCase, coordinator: coordinator)
        view.setViewModel(viewModel: viewModel)
        return view
    }
    
}
