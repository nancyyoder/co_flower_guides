//
//  ContentView.swift
//  Colorado Flower Guide
//
//  Created by Nancy Yoder on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading){
            
            BackgroundView()
                .frame(height: 200)
            ImageView()
                .offset(x: 80, y: -200)
                .padding(.bottom, -250)
            
            VStack(alignment: .leading){
                Text("Colorado Blue Columbine")
                    .font(.title)
                Text("Aquilegia coerulea")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                VStack (alignment: .leading){
                    Text("Colors: Pale Blue, White, Yellow")
                    Text("Shapes: Star, Buttercup")
                    Text("States: Colorado, Idaho, Montana, Wyoming, New Mexico, Utah")
                    Text("Smells: Honeysuckle")
                }.padding(.top)
            }.padding(.leading, 30.0)
        }
        
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
