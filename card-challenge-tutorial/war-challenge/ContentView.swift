//
//  ContentView.swift
//  war-challenge
//
//  Created by Robbie Ho on 09/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {

        ZStack(){
            Image("background")
                .ignoresSafeArea()
            VStack(){
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                //HStack for two cards
                HStack(){
                    Image(playerCard).padding()
                    Image(cpuCard).padding()
                }.padding()
                
                Spacer()
                Button(action: {
                    
                    //Generate random number between 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update the score
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }
                    else if (cpuRand == playerRand){
                        return
                    }
                    else {
                        cpuScore += 1
                    }
                    //playerScore += 1
                    //cpuScore += 1
                    
                }, label: {
                    Image("dealbutton")
                })
               
                
                Spacer()
                
                //Scores
                HStack(){
                    
                    Spacer()
                    
                    //Player
                    VStack(){
                        Text("Player").padding()
                        Text(String(playerScore)).font(.largeTitle).padding(.bottom)
                    }
                    
                    Spacer()
                    
                    //CPU
                    VStack(){
                        Text("CPU").padding()
                        Text(String(cpuScore)).font(.largeTitle).padding(.bottom)
                    }
                    
                    Spacer()
                    
                }.foregroundColor(Color.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
            }
            
        }
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
