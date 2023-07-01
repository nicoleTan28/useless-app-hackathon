//
//  ContentView.swift
//  grp proj
//
//  Created by T Krobot on 1/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 188/255, green: 227/255, blue: 255/255)
            VStack {
                Image("penguinPng")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
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
