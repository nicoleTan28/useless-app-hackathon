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
    var body: some View {
        ZStack {
            Color(red: 188/255, green: 227/255, blue: 255/255)
            VStack {
                if showSpeach == 1 {
                    Text("You're asking *me*, (penguin name), about penguin facts? Is that all I am to you? Do you think I was created to answer your trivial trivia questions?")
                        .padding()
                        .font(.title)
                        .background()
                        .cornerRadius(15)
                    Button {
                        nextPart1 += 1
                    } label: {
                        Text(">")
                            .foregroundColor(.black)
                            .font(.title)
                    }
                }

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
                        .font(.title)
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
