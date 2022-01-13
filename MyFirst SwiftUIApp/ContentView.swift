//
//  ContentView.swift
//  MyFirst SwiftUIApp
//
//  Created by MUHAMMAD AZIZULLO on 04/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    var body: some View {
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
                
                VStack {
                Spacer()
                Image("logo")
                Spacer()
                 
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                    Button(action:{
                        
                        let playerRandom = Int.random(in: 2...14)
                        let cpuRandom = Int.random(in: 2...14)
                        
                        
                        playerCard = "card" + String( playerRandom)
                        cpuCard = "card" + String(cpuRandom)
                        
                        if playerRandom > cpuRandom {
                            playerScore += 1
                        }
                        else if cpuRandom > playerRandom {
                            cpuScore += 1
                        
                        }
                        
                    }, label: {
                
                Image("dealbutton")
                           })
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white).padding(.bottom,10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        }
                            Spacer()
                            VStack {
                                Text("Cpu")
                                    .font(.headline)
                                    .foregroundColor(Color.red)
                                    .padding(.bottom,10.0)
                                Text(String(cpuScore))
                                    .font(.largeTitle)
                                    .foregroundColor(Color.red)
                
                    }
                    Spacer()
                }
                Spacer()
        }
        }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
