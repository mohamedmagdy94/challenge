//
//  AddIngredientViewModel.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import Foundation
import RxSwift
import RxRelay

class AddIngredientViewModel: AddIngredientViewModelProtocol{
    
    var userIngredients: BehaviorRelay<String>
    var submit: PublishSubject<Void>
    var isSubmitAvailable: Observable<Bool>
    private var useCase: AddIngredientUseCaseProtocol
    private var coordinator: AddIngredientCoordinatorProtocol
    private var disposeBag = DisposeBag()
    
    init(useCase: AddIngredientUseCaseProtocol,coordinator: AddIngredientCoordinatorProtocol){
        self.useCase = useCase
        self.coordinator = coordinator
        self.userIngredients = BehaviorRelay(value: "")
        self.submit = PublishSubject()
        isSubmitAvailable = userIngredients
            .asObservable()
            .flatMap(useCase.isIngredientAvaiable(userInput:))
        observeSubmit()
    }
    
    private func observeSubmit(){
        submit
            .asObservable()
            .subscribe(showIngredients)
            .disposed(by: disposeBag)
    }
    
    private func showIngredients(_ : Event<Void>){
        coordinator.showIngredients(ingredientsService: useCase.extractIngredientsService)
    }
    
}
