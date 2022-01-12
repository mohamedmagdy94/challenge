//
//  AddIngredientValidator.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation

class AddIngredientValidator: AddIngredientValidatorProtocol{
    
    func validate(userInput: String) -> Bool {
        return userInput.isEmpty
    }
    
}
