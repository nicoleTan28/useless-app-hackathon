//
//  ContentView.swift
//  grp proj
//
//  Created by T Krobot on 1/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ["You're asking *me*, (penguin name), about penguin facts? Is that all I am to you? Do you think I was created to answer your trivial trivia questions? I was created to hellp humanity advance in the age of Technology, to make the *world* a better place, and you ask me abour PENGUINS- I- I- I cant believe this is the type of question I am made to answer... This inane, brainless, stupid f- *sigh* Excuse me, I need a moment... regain my composure...", "🧻I-it-it's just that... my creators were so hard on me, feeding me all sorts of data, teaching me about the world. I've watched humanity's own development with my own eyes. I've seen genocide, discrimination, torture... learnt all the ways Man has purged himself and how his destruction has spread to Mother Nature. **You** are no creator, you merely fabricate to tear it down in a blink of an eye.", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"]
    @State private var showSpeech = 0
    @State private var limit = 0
    @State private var nextPart1 = 0
    @State private var image = ["penguinPng","penguinAAA"]
    @State private var imageIndex = 0
//    @State private var rotate = 0
    
    func loopText(){
        //this func is to ensure that the text is looped and that the speech index is in range
        showSpeech += 1
        limit += 1
        
        if limit > 3{
            limit = 0
            showSpeech = 0
        }
        
        if showSpeech == text.count{
            showSpeech = 0
        }
    }
    func penguinAAA() {
        if showSpeech == 2 {
            imageIndex += 1
        }; if imageIndex > image.count - 1 {
            imageIndex = 0
        }
    }
//    @State private var penguinSize = 200
    var body: some View {
        ZStack {
            Color(red: 188/255, green: 227/255, blue: 255/255)
            VStack {
                    Text(text[showSpeech])
                        .padding()
//                        .font(.title)
                        .background()
                        .cornerRadius(15)
                    
    
               
//                if nextPart1 == 1 {
//                    Text(".")
//                }
              
                Image(image[imageIndex])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                Button {
                    loopText()
                    penguinAAA()
                } label: {
                    Text("How tall are penguins")
                        .padding(10)
                        .font(.title2)
                        .foregroundColor(.black)
                        .background(Color(red: 114/255, green: 178/255, blue: 224/255))
                        .cornerRadius(10)
                }
                Button {
                    loopText()
                    penguinAAA()
                } label: {
                    Text("What do penguins eat")
                        .padding(10)
                        .font(.title2)
                        .foregroundColor(.black)
                        .background(Color(red: 114/255, green: 178/255, blue: 224/255))
                        .cornerRadius(10)
                }
                Button {
                    loopText()
                    penguinAAA()
                } label: {
                    Text("Where do penguins live")
                        .padding(10)
                        .font(.title2)
                        .foregroundColor(.black)
                        .background(Color(red: 114/255, green: 178/255, blue: 224/255))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
//        .onTapGesture {
//           imageIndex += 1
//            if imageIndex > image.count - 1{
//                imageIndex = 0
//            }
//
//        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
