//
//  AddIngredientUseCase.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation
import RxSwift

class AddIngredientUseCase: AddIngredientUseCaseProtocol{
    
    var extractIngredientsService: ExtractIngredientProtocol
    
    init(extractIngredientsService: ExtractIngredientProtocol){
        self.extractIngredientsService = extractIngredientsService
    }
    
    func getIngredients(userInput: String) -> Observable<Ingredient> {
        let ingredientsExtractResult = extractIngredientsService.extractIngredients(userInput: userInput)
        let result: Observable<Ingredient>!
        switch ingredientsExtractResult{
        case .success(let ingredients):
            result = Observable.from(ingredients)
        case .failure(let error):
            result = Observable.error(error)
        }
        return result
    }
    
}
