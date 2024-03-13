//
//  ContentView.swift
//  MyApp
//
//  Created by Haider Malik on 2024-03-12.
//

import SwiftUI

struct ContentView: View { // CONTENT view is what created the UI and displays it
    var body: some View {

        ZStack{ // z stack for z axis like depth so black screen furtest back then ontop of the blac screen is our vstack
            Color(.black)
                .ignoresSafeArea()
            VStack { // v stack can put things on top of each other
                Link("Follow me on GitHub",
                      destination: URL(string: "https://github.com/HaiderMalikk")!)
                .padding(.vertical, 30)
                // Image element using Image word
                Image("table")
                    .resizable()
                    .padding(.bottom, 10.0)
                    .frame(width: 350.0, height: 250.0)
                    .cornerRadius(30)
                Text("Ionizing Energy")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(.vertical, 10.0)
                Button("Print in console") {
                    print("Hello World!")
                }
            }
            .padding() // padding on all 4 sides of vstack centers and aligns VStack
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
