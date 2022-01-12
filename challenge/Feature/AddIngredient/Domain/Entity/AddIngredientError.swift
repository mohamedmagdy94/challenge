//
//  AddIngredientError.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation

enum AddIngredientError: Error{
    case INVALID_INPUT
    
    var localizedDescription: String {
        switch self {
        case .INVALID_INPUT:
            return "Invalid Input"
        }
    }
}
