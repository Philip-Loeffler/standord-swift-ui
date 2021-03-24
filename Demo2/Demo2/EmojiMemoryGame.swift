
//this will be our view-model
//this is essentially a doorway for our view to get to our model
//classes are easy to share, lives in the heap, and has pointers. so all of our views have pointers to them
//having private var model, means that it is private to this class
//private(set) means that only emojiMemorygame can modify the model, but everything else can see the model
// {(pairIndex" int -> String in = this is the closure. it is an inline function
import Foundation


class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃"]
            return MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: { (pairIndex: Int) -> String in
            return emojis[pairIndex]
        })
    }
    
    //we can let people look at this model in constricted ways. this marks access to the model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    // Mark intents() -allows other views to access
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card:card)
        
    }
}
