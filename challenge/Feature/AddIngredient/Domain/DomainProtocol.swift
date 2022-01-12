//
//  DomainProtocol.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation
import RxSwift

protocol AddIngredientUseCaseProtocol{
    func getIngredients(userInput: String)->Observable<Ingredient>
}

protocol ExtractIngredientProtocol{
    func extractIngredients(userInput: String)->Result<[Ingredient],AddIngredientError>
}

protocol AddIngredientValidatorProtocol{
    func validate(userInput: String)->Bool
}
