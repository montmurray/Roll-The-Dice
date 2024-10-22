//
//  ContentView.swift
//  Roll The Dice
//
//  Created by Tessa Murray on 10/22/24.
//

import SwiftUI

struct ContentView: View {
    @State var randomValue = 0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                }
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
