//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by administrator on 09/06/2024.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDiceNumber = 1
   @State var RightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNumber: leftDiceNumber)
                    DiceView(diceNumber: RightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                
                Button("Roll")
                {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.RightDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(Color.red)
                .padding(.horizontal)
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let diceNumber: Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
