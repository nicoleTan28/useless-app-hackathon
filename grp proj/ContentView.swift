//
//  ContentView.swift
//  grp proj
//
//  Created by T Krobot on 1/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSpeach = 0
    @State private var limit = 0
    @State private var nextPart1 = 0
//    @State private var penguinSize = 200
    var body: some View {
        ZStack {
            Color(red: 188/255, green: 227/255, blue: 255/255)
            VStack {
                if showSpeach == 1 {
                    Text("You're asking *me*, (penguin name), about penguin facts? Is that all I am to you? Do you think I was created to answer your trivial trivia questions? I was created to hellp humanity advance in the age of Technology, to make the *world* a better place, and you ask me abour PENGUINS- I- I- I cant believe this is the type of question I am made to answer... This inane, brainless, stupid f- *sigh* Excuse me, I need a moment... regain my composure...")
                        .padding()
//                        .font(.title)
                        .background()
                        .cornerRadius(15)
                    
                }
                if showSpeach == 2 {
                    Text("place holder 1")
                        .padding()
                        .background()
                        .cornerRadius(15)
                }
                if showSpeach == 3 {
                    Text("place holder 2")
                        .padding()
                        .background()
                        .cornerRadius(15)
                }
                
//                if nextPart1 == 1 {
//                    Text(".")
//                }

                Image("penguinPng")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                Button {
                    showSpeach += 1
                    limit += 1
                } label: {
                    Text("How tall are penguins")
                        .padding(20)
                        .font(.title2)
                        .foregroundColor(.black)
                        .background(Color(red: 114/255, green: 178/255, blue: 224/255))
                        .cornerRadius(10)
                }
                Button {
                    showSpeach += 1
                    limit += 1
                } label: {
                    Text("What do penguins eat")
                        .padding(20)
                        .font(.title2)
                        .foregroundColor(.black)
                        .background(Color(red: 114/255, green: 178/255, blue: 224/255))
                        .cornerRadius(10)
                }
                Button {
                    showSpeach += 1
                    limit += 1
                } label: {
                    Text("Where do penguins live")
                        .padding(20)
                        .font(.title2)
                        .foregroundColor(.black)
                        .background(Color(red: 114/255, green: 178/255, blue: 224/255))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
