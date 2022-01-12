//
//  AddIngredientValidator.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation

class AddIngredientValidator: AddIngredientValidatorProtocol{
    
    func validate(userInput: String) -> Bool {
        let firstCondition = !userInput.isEmpty
        let stringSeperated = userInput.replacingOccurrences(of: ",", with: "").components(separatedBy: "\n")
        let secondCondition = isThereAvailableIngredient(userInput: userInput)
        return firstCondition && secondCondition
    }
    
    private func isThereIngredients(userInput: String)->Bool{
        var stringSeperated = userInput.replacingOccurrences(of: ",", with: "").components(separatedBy: "\n")
        stringSeperated.removeAll{ $0 == "" }
        return stringSeperated.count > 0
    }
    
    private func isThereAvailableIngredient(userInput: String)->Bool{
        let isThereIngredients = isThereIngredients(userInput: userInput)
        if isThereIngredients{
            var stringSeperated = userInput.replacingOccurrences(of: ",", with: "").components(separatedBy: "\n")
            stringSeperated.removeAll{ $0 == "" }
            var ingredient = stringSeperated[0].components(separatedBy: " ")
            ingredient.removeAll{ $0 == " " }
            ingredient.removeAll{ $0 == "" }
            return ingredient.count == 3
        }else{
            return false
        }
    }
    
}
