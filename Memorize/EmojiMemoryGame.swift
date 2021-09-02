//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by user on 01/08/21.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    

    static private var emojis =  ["🚘", "🚌", "🚛", "🚔", "🛬", "🚝", "🚁", "🛶", "🚤", "🚍"]

     static private func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
     
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intents(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
