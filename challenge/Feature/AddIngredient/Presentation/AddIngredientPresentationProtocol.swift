//
//  PresentationProtocol.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation
import RxSwift
import RxRelay

protocol AddIngredientViewModelProtocol{
    //Input
    var userIngredients: BehaviorRelay<String>{get}
    var submit: PublishSubject<Void>{get}
    //Output
    var isSubmitAvailable: Observable<Bool>{get}
}


protocol AddIngredientCoordinatorProtocol: Coordinating{
    func showIngredients(ingredientsService: ExtractIngredientProtocol)
}
