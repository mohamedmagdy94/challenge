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
    
    private var viewModel: AddIngredientView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        
    }
    
}
