//
//  ContentView.swift
//  war-challenge
//
//  Created by Zee on 17.07.23.
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
                Button {
                    dealnow()
                } label: {
                    Image("dealbutton")
                }
                
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
            
        }
    }
    
    func dealnow() {
        
        let playerRandom = Int.random(in: 2...14)
        let cpuRandom = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerRandom)
        cpuCard = "card" + String(cpuRandom)
        
        if playerRandom > cpuRandom {
            playerScore += 1
        } else if cpuRandom > playerRandom {
            cpuScore += 1
        }
        
        if playerRandom < cpuRandom {
            playerScore += 1
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

