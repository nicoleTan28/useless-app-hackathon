//
//  ContentView.swift
//  grp proj
//
//  Created by T Krobot on 1/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showSpeach = false
    @State private var limit = 0
    var body: some View {
        ZStack {
            Color(red: 188/255, green: 227/255, blue: 255/255)
            VStack {
                Image("penguinPng")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                Button {
                    showSpeach = true
                    limit += 1
                } label: {
                    Text("How tall are penguins")
                        .padding(20)
                        .font(.largeTitle)
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
