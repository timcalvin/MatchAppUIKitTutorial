//
//  CardModel.swift
//  MatchApp
//
//  Created by Timothy Bryant on 6/15/22.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array of cards and random numbers
        var generatedCards = [Card]()
        var generatedNumbers = [Int]()
        
        // Randomly generate 8 pairs of cards
        while generatedCards.count < 15 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            if !generatedNumbers.contains(randomNumber) {
                print(randomNumber)
                generatedNumbers.append(randomNumber)
                
                // Create two new card objects
                let cardOne = Card()
                let cardTwo = Card()
                
                // Set their image names
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                
                // Check to see if array already contains this random number
                
                // Add them to the array
                generatedCards += [cardOne, cardTwo]
            }
            
        }
        
        // Randomize the cards within the array
        generatedCards.shuffle()
        
        // Return the array
        return generatedCards
    }
    
}
