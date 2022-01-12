//
//  ExtractIngredientService.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation

class ExtractIngredientService: ExtractIngredientProtocol{
    
    private var userInput: String
    private var ingredientsStrings: [String]
    private var ingredients: [Ingredient]
    private var validator: AddIngredientValidatorProtocol
    
    init(validator: AddIngredientValidatorProtocol){
        userInput = ""
        ingredientsStrings = []
        ingredients = []
        self.validator = validator
    }
    
    func extractIngredients(userInput: String) -> Result<[Ingredient],AddIngredientError> {
        self.userInput = userInput
        let validationResult = validator.validate(userInput: userInput)
        if !validationResult{
            return .failure(.INVALID_INPUT)
        }else{
            ingredientsStrings = userInput.components(separatedBy: "\n")
            ingredients = ingredientsStrings.map(extractIngredient)
            return .success(ingredients)
        }
    }
    
    private func extractIngredient(ingredientString: String)->Ingredient{
        let ingredientsComponents = ingredientString.components(separatedBy: " ")
        let ingredientQuantity = Int(ingredientsComponents[1]) ?? 0
        let ingredient = Ingredient(quantity: ingredientQuantity, unit: ingredientsComponents[2], name: ingredientsComponents[0], calories: nil, weight: nil)
        return ingredient
    }
    
}
