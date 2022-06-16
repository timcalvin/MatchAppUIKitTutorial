//
//  ViewController.swift
//  MatchApp
//
//  Created by Tim Bryant on 6/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    let model = CardModel()
    var cardsArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsArray = model.getCards()
    }


}

