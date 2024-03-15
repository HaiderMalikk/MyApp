//
//  ContentView.swift
//  MyApp
//
//  Created by Haider Malik on 2024-03-12.
//

import SwiftUI
struct ContentView: View {
    // starting cards
    @State var playerCard = "card7" // state as cannot assign value to self ie cannot change playercard is deal function use state
    @State var cpuCard = "card4"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button() {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white) // apply the color to the whole contianer insted of each vstack container or indivisual text elements as this effects everything in Hstack
                Spacer()
            }
        }
        
    }

    func deal(){
        playerCard = "card" + String(Int.random(in: 2...14))
        cpuCard = "card" + String(Int.random(in: 2...14))
        if playerCard > cpuCard{
            playerScore += 1
        }
        else if cpuCard > playerCard{
            cpuScore += 1
        }
        else{
            
        }
    }
}

// mark keywork makes a selection seetoolbar
// MARK: - this is for preview

// calling the function to display
#Preview {
    ContentView()
}

/*
 docstring drag breakpoints off
 */
