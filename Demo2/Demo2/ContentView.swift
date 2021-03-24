//
//  ContentView.swift
//  Demo2
//
//  Created by Philip Loeffler on 3/24/21.
//our view is always expressing what it sees in the model
//the model is the memory game file
import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
         HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture  {
                    viewModel.choose(card: card)
                    
                }
            }
        }
         .padding()
         .foregroundColor(Color.orange)
         .font(Font.largeTitle)
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
            Text("👻")
            RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}































//this code is what will show up on the right hand side in the preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: <#T##EmojiMemoryGame#>)
    }
}
