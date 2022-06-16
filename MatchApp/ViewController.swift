//
//  ViewController.swift
//  MatchApp
//
//  Created by Tim Bryant on 6/15/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let model = CardModel()
    var cardsArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardsArray = model.getCards()

        // Set the view controller as the datasource and delegate of the collection view
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    // MARK: - CollectionView Delegate Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Get a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath)
        
        // TODO: Configure cell
        
        
        // Return cell
        return cell
    }

}

