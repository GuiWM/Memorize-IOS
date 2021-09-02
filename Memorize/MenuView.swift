//
//  MenuView.swift
//  Memorize
//
//  Created by user on 01/09/21.
//

import SwiftUI

struct MenuView: View {
    
    private let decks: [Categorie] = [
        Categorie(
            id: 0,
            type: "Vehicles",
            emojis: ["🚘", "🚌", "🚛", "🚔", "🛬", "🚝", "🚁", "🛶", "🚤", "🚍"]
        ),
        Categorie(
            id: 1,
            type: "Faces",
            emojis: ["☺️", "😊", "🤯", "😉", "😅", "🥰", "😡", "🥺", "😏", "😎"])
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(decks) { deck in
                    let game = EmojiMemoryGame(emojis: deck.emojis)
                    NavigationLink(deck.type, destination: EmojiMemoryGameView(game: game))
                }
            }
            .navigationTitle("Memorize")
            
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct Categorie: Identifiable {
    var id: Int
    
    var type: String
    var emojis: [String]
}
