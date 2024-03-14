//
//  ContentView.swift
//  MyApp
//
//  Created by Haider Malik on 2024-03-12.
//

import SwiftUI

struct ContentView: View { // CONTENT view is what created the UI and displays it
    var body: some View {
        VStack{
            Text("CHEMISTRY")
                .font(.title)
                .fontWeight(.heavy)
                
        }
        .frame(width: 300.0, height: 100.0)
        .background(Rectangle().foregroundColor(.white))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
        .padding(.bottom, 90.0)
        
        
        
        VStack(alignment: .leading, spacing: 20.0){
            Image("table")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            HStack{
                Image(systemName: "star.fill")
                    .foregroundColor(Color.red)
                    .padding(.leading, 30.0)
                
                Text("Table of ionizing energy")
                    .font(.title)
                
            }
            .padding(.leading, 5.0)
            
        }
        
        VStack(alignment: .leading) {
            HStack(alignment: .center){
                Text("NOTE:")
                    .fontWeight(.bold)
                    .padding(.horizontal, 20.0)
            }
            Text("Some Elements Do Not Follow The Trend Shown By The Arrows.")
                .padding(.horizontal, 20.0)
        }
        .padding(.top, 5.0)
        .padding(.bottom, 50.0)
            
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
