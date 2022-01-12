//
//  DomainProtocol.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation
import RxSwift

protocol AddIngredientUseCaseProtocol{
    var extractIngredientsService: ExtractIngredientProtocol{get}
    func getIngredients(userInput: String)->Observable<Ingredient>
    func isIngredientAvaiable(userInput: String)->Observable<Bool>
}

protocol ExtractIngredientProtocol{
    func extractIngredients(userInput: String)->Result<[Ingredient],AddIngredientError>
}

protocol AddIngredientValidatorProtocol{
    func validate(userInput: String)->Bool
}
