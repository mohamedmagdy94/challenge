//
//  AddIngredientViewController.swift
//  challenge
//
//  Created by Mohamed Eltaweel on 12/01/2022.
//

import UIKit
import RxSwift
import RxCocoa
import RxOptional

class AddIngredientViewController: UIViewController {

    @IBOutlet weak var userInput: UITextView!
    @IBOutlet weak var analyzeButton: UIButton!
    
    private var viewModel: AddIngredientViewModelProtocol?
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        setupViews()
        setupRx()
    }
    
    private func setupViews(){
        userInput.layer.borderWidth = 1
        userInput.layer.borderColor = UIColor.gray.cgColor
        userInput.layer.cornerRadius = 8
    }
    
    private func setupRx(){
        guard let viewModel = viewModel else{ return }
        viewModel
            .isSubmitAvailable
            .bind(to: analyzeButton.rx.isEnabled)
            .disposed(by: disposeBag)
        userInput
            .rx
            .text
            .filterNil()
            .asObservable()
            .bind(to: viewModel.userIngredients)
            .disposed(by: disposeBag)
        analyzeButton
            .rx
            .tap
            .asObservable()
            .bind(to: viewModel.submit)
            .disposed(by: disposeBag)
    }
    
    func setViewModel(viewModel: AddIngredientViewModelProtocol){
        self.viewModel = viewModel
    }
    
}
