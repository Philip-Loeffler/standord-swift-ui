//
//  MemoryGame.swift
//  Demo2
//
//  Created by Philip Loeffler on 3/24/21.
//


// by putting struct inside memoryCard, so the card inside the memory games full name is actually "memoryGame.card"
// CardContent is a generic type, So in the struct declaration you have to let it know that it takes in a generic cardContent type. It is saying that if you are
// going to use memory game, you are going to have to tell it what cardcontent is
import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    //we want this function to accept one value "one param" that is a card. and this card is of type Card. card = param, Card = type
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    //cardContentFactory takes in an int and returns a cardContent
    init (numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        //this is initialzing an empty array of cards
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2+1))
        }
        
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        var id: Int
    }
    
}
