//
//  ContentView.swift
//  Memorize
//
//  Created by Philip Loeffler on 3/23/21.
//

// imports swiftui package. makes all swift ui work
import SwiftUI

//struct=container for variables, can have functions, and behaviors
//the View sfter contentview, is saying that this struct is going to 'behaves' like a view
//a view is just a rectangle area on screen
// emojis are just texts
// RoundedRectangle(cornerRadius: 10.0) all arguments are labled, then there is the value
// zstack() : a struct that behaves just like a view
// roundeded rectangle also behaves like a shape
// strokes return a view, and if it didnt we couldnt put it in the zstack
// if you were to call the foreground function at the end of the zstack, it would make
// all of the content in the zstack return with an orange foreground
// zstack is essentially setting the enviroment for this view
//if you put the font on the zstack, it would make all of the fonts in that enviroment, have
// a large font
// for each is just going to iterate over a view
//index is the iteration ariable
//hstack is going to allow you to iterate over a view and stack those things horizontally
//..that is what the h stands for
struct ContentView: View {
    var body: some View {
         HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
         .padding()
         .foregroundColor(Color.orange)
         .font(Font.largeTitle)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
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
        ContentView()
    }
}
